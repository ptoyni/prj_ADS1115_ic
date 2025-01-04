% Example FIR filter order estimation for single and two-stage decimator
clc
clearvars
close all
%
%% Decimator design specification
% Parameter see example chap. 4.7, p. 4-48 + p. 4-49
M   = 512;                      % Decimation factor
Fs  = 430;                      % Passband-edge frequency
Fp  = Fs*0.9;                   % Stopband-edge frequency
FT  = 220000;                   % Input sampling frequency
deltap = 0.002;                 % Passband ripple
deltas = 0.001;                 % Stopband ripple
L = 15;                         % Interpolator factor for IFIR filter
fprintf('\n##### Filter order estimation and computational costs #####\n');
%
%% Filter order for H(z) (single stage)
f = [Fp Fs];            % Vector for band edge frequencies
a = [1 0];              % Desired amplitudes
dev = [deltap deltas];  % Desired deviations 
NH = firpmord(f,a,dev,FT);
fprintf('\nFilter order estimation for H(z): \tNH = %d', NH);
%
%% Filter order for image suppressor filter G(z)
f = [Fp*L Fs*L];         % Vector for band edge frequencies
a = [1 0];               % Desired amplitudes
dev = [deltap/2 deltas]; % Desired deviations (Note: rp/2 due to cascade)
NG = firpmord(f,a,dev,FT);
fprintf('\nFilter order estimation for G(z): \tNG = %d', NG);
%
%% Filter order for interpolation filter F(z)
f = [Fp FT/L-Fs];        % Vector for band edge frequencies
a = [1 0];               % Desired amplitudes
dev = [deltap/2 deltas]; % Desired deviations (Note: rp/2 due to cascade)
NF = firpmord(f,a,dev,FT);
fprintf('\nFilter order estimation for F(z): \tNF = %d\n\n', NF);
%
%% Computational costs and computational savings
% Multiplications per second for H(z)
RH = (NH+1)*FT/M;
fprintf('Multiplications per second for H(z): \tRH = %d\n', RH);
% Multiplications per second for G(z)
RG = (NG+1)*FT/M;
fprintf('Multiplications per second for G(z): \tRG = %d\n', RG);
% Multiplications per second for F(z)
RF = (NF+1)*FT/L;
fprintf('Multiplications per second for F(z): \tRF = %d\n', RF);
% Computational savings
fprintf('\nComputational savings compared to a single filter: \n   L = 15: \t%4.2f %%\n', ...
    (1-(RG+RF)/RH)*100);
%
%% Optional values for L, where M/L is integer and M = 30
fprintf('\n##### Computational savings for different values of L #####\n');
% M = 30, L = 2
L = 2;
NG = firpmord([Fp*L Fs*L],[1 0],[deltap/2 deltas],FT);
NF = firpmord([Fp FT/L-Fs],[1 0],[deltap/2 deltas],FT);
RG = (NG+1)*FT/M; 
RF = (NF+1)*FT/L;
fprintf('\n   L = %d:\t%4.2f %%', L, (1-(RG+RF)/RH)*100);
% M = 30, L = 3
L = 3;
NG = firpmord([Fp*L Fs*L],[1 0],[deltap/2 deltas],FT);
NF = firpmord([Fp FT/L-Fs],[1 0],[deltap/2 deltas],FT);
RG = (NG+1)*FT/M; 
RF = (NF+1)*FT/L;
fprintf('\n   L = %d:\t%4.2f %%', L, (1-(RG+RF)/RH)*100);
% M = 30, L = 5
L = 5;
NG = firpmord([Fp*L Fs*L],[1 0],[deltap/2 deltas],FT);
NF = firpmord([Fp FT/L-Fs],[1 0],[deltap/2 deltas],FT);
RG = (NG+1)*FT/M; 
RF = (NF+1)*FT/L;
fprintf('\n   L = %d:\t%4.2f %%', L, (1-(RG+RF)/RH)*100);
% M = 30, L = 6
L = 6;
NG = firpmord([Fp*L Fs*L],[1 0],[deltap/2 deltas],FT);
NF = firpmord([Fp FT/L-Fs],[1 0],[deltap/2 deltas],FT);
RG = (NG+1)*FT/M;
RF = (NF+1)*FT/L;
fprintf('\n   L = %d:\t%4.2f %%', L, (1-(RG+RF)/RH)*100);
% M = 30, L = 10
L = 10;
NG = firpmord([Fp*L Fs*L],[1 0],[deltap/2 deltas],FT);
NF = firpmord([Fp FT/L-Fs],[1 0],[deltap/2 deltas],FT);
RG = (NG+1)*FT/M;
RF = (NF+1)*FT/L;
fprintf('\n   L = %d:\t%4.2f %%\n', L, (1-(RG+RF)/RH)*100);
%
% EOF