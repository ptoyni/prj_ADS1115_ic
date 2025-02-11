%% Example Modulator System
% "Understanding Delta-Sigma Data Converters", Schreier, 2005, Ch. 9
clc
%clearvars
%clear

%% Calibration of test system
L = 2;                % Order of modulator
form = 'CIFB';        % Cascade of integrator feedback
opt = 0;              % No optimisation
nLev = 2;             % Quantizer level
fs = 220e3;           % Sampling frequency
Ts = 1/fs;            % Sampling time
M = 512;              % OSR
N = 16*M;             % Simulation length (output samples), FFT points
fB = fs/(2*M);          % Bandwidth
cycles = 9;           % Number of sinusoids
fx = cycles * fs/N;   % Test tone
A = 0.8;              % Signal amplitude
t = Ts * [0:N-1];
u = A * sin(2 * pi * fx/fs * [0:N-1]);

%% Design NTF
H = synthesizeNTF(L, M, opt, 2);
synthesizeSTF
[a, g, b, c] = realizeNTF(H, form);
b(2:end) = 0;
ABCD = stuffABCD(a, g, b, c, form);
[ABCDs umax] = scaleABCD(ABCD);
[a, g, b, c] = mapABCD(ABCDs, form);

% pole-zero plot of NTF object
H
pzplot(H)

%% Simulink
mdl = 'dsm_l2_sim';
%load_system(mdl);
open_system(mdl);

%sigIn.time = ([0:N-1]/fs)';
%sigIn.signals(1).values = u';
%sigIn.signals(1).dimensions = 1;

% Solver options
simoptions=simset( ...
    'Solver', 'FixedStepDiscrete', ...
    'RelTol', 1e-3, ...
    'MaxStep', Ts);

[t_, u_, simout] = sim(mdl, max(t), simoptions, [t', u']);
    % 'SaveOutput','on','OutputSaveName','yout');

%% Post-processing Simulink, quantizer gains
y = simout(:,1)'; % prime to adapt dimension
v = simout(:,2)'; % prime to adapt dimension
x = simout(:,3)'; % prime to adapt dimension
%y = simOut.yout.get('y').Values.Data';
%v = simOut.yout.get('v').Values.Data';
k = (v*y')/(y*y');

%% Time domain plot
%close; 
%set(gca, 'fontsize', 12);
fig12 = figure(11);
    stairs(t, v, 'LineWidth', 1.5); hold on;
    plot(t, u, 'LineWidth', 2); hold off;
    axis([ min(t) max(t)/9 1.1*min(v) 1.1*max(v) ]);
    xlabel('Time t/T'); ylabel('Amplitude');
    legend('v: PWM output','u: input');
    title('2nd Order \Sigma\Delta, Input to Output');
fig22 = figure(12);
    plot(t, y, 'LineWidth', 1, 'Color', 'k'); hold on;
    plot(t, x, 'LineWidth', 1, 'Color', 'r'); hold off;
    axis([ min(t) max(t)/9 1.1*min(v) 1.1*max(v) ]);
    xlabel('Time t/T'); ylabel('Amplitude');
    legend('y: second stage','x: first stage');
    title('2nd Order \Sigma\Delta, Different Integrator Outputs');
fig32 = figure(13);
    plot(t, y, 'LineWidth', 1, 'Color', 'k'); hold on;
    plot(t, v, 'LineWidth', 1, 'Color', 'r'); hold off;
    axis([ min(t) max(t)/9 1.1*min(v) 1.1*max(v) ]);
    xlabel('Time t/T'); ylabel('Amplitude');
    legend('y: second stage','v: PWM Output');
    title('2nd Order \Sigma\Delta, Quantization of Second-Stage Output');

save("./data/dsm_l2_time_domain_plot.mat", "t", "u", "v", "y", "x")
%% Spectral analysis, lec. 3 slides
sq = abs(fft(v));

% Remove redundant half of spectrum and normalize to FS
f = [0:N/2-1]/N;  % frequency vector
z = exp(2i*pi*f);

sq_hlf = sq(1:end/2)/(N/2);
sqdBFS = 20*log10(sq_hlf);

% log10(0) -> -inf/inf correction
sqdBFS(isinf(sqdBFS)) = -150;

% Generate the magnitude plot with annotation
fig42 = figure(14);
set(gca, 'fontsize', 14);
plot(f, sqdBFS, 'linewidth', 1.5);
axis([0 0.06 -150 0]);
xlabel('Normalized Frequency f/fs')
ylabel('DFT Magnitude in dBFS')
title("Spectral NTF analysis, related to lec. 3 slides")
grid;

save("./data/dat_spectral_analysis2.mat", "f", "sqdBFS")
%% Spectral analysis, delsig toolbox

% Normalize magnitudes to full-scale (FS=nLev-1=1) 
sqFS = sq/(N/2);

fig52 = figure(15);
plot(f, dbv(sqFS(1:end/2)));
axis([0 0.06 -150 0]);
grid on;
ylabel('dBFS');
xlabel('f/fs');
title("Spectral Analysis, utilizing delsig toolbox")


%% Windowed plot
specHW = fft(v.*ds_hann(N))/(N/4);

fig62 = figure(16);
plot(f, dbv(specHW(1:end/2)));
axis([0 0.06 -150 0]);
grid on;
ylabel('dBFS');
xlabel('f/fs');

%% Decimation filter
% Assume fB = 220 kHz, fx = 20 Hz
% 480 S/s at output
% SINC3, DCF, HBF1, HBF2

% SINC3
Nsinc = 64; % downsampling ratio
%h1 = zeros(1, Nsinc);
%h1(1:Nsinc) = 1/Nsinc;
hsinc1 = ones(1, Nsinc)*1/Nsinc;
hsinc2 = conv(hsinc1, hsinc1);
hsinc3 = conv(hsinc1, hsinc2);

%% Filter SDM output
Sinc3outOrg = conv(hsinc3, v);
Sinc3out = downsample(Sinc3outOrg, Nsinc);

%% Droop correction filter (DCF)
DCF = fdesign.decimator(Nsinc, 'ciccomp', 1, 3, 'N,Fc,Ap,Ast', 12, 0.45, 0.05, 60);
Hdcf = design(DCF, 'equiripple', 'SystemObject', true);
DCFnum = Hdcf.Numerator;
[DCFfreq, w3] = freqz(DCFnum, 1);
[DCFimp, tw3] = impz(DCFnum, 1);

%% Filter operation
DCFout = conv(Sinc3out, DCFimp);

%% Half-band filter 1 (HBF1)
FsHBF1 = fs/Nsinc;
HBF1taps = 26;
HBF1num = firhalfband(HBF1taps, 0.25);
[hbf1f, w1] = freqz(HBF1num, 1);
[hbf1t, tw1] = impz(HBF1num, 1);
HBF1outOrg = conv(DCFout, hbf1t);
HBF1out = downsample(HBF1outOrg, 2);

%% Half-band filter 2 (HBF2)
FsHBF2 = FsHBF1/2;
HBF2taps = 50;
HBF2num = firhalfband(HBF2taps, 0.25);
[hbf2f, w2] = freqz(HBF2num, 1);
[hbf2t, tw2] = impz(HBF2num, 1);
HBF2outOrg = conv(HBF1out, hbf2t);
HBF2out = downsample(HBF2outOrg, 2);

