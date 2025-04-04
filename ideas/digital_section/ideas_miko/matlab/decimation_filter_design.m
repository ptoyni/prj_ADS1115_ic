% Multistage Decimator design
%
clc 
clearvars
close all
%
%% Decimator design specification
M = 512;        % Decimation factor (OSR)                                 
FT = 220000;    % Input sampling frequency
Fs = 430;       % Stopband-edge frequency
Fp = Fs*0.9;    % Passband-edge frequency
deltap = 0.002; % Passband ripple
deltas = 0.001; % Stopband ripple
% Convert absolute to relative specs (in dB)
[Ap,As] = delta2db(deltap,deltas); % user-defined function
%
%% Two-Stage Decimator Design using fdesign.decimator and 'ifir' option
fprintf('\n#### Two-stage design using fdesign.decimator ####\n')
hf = fdesign.decimator(M,'lowpass',Fp,Fs,Ap,As,FT);
hd1 = design(hf,'ifir', 'Systemobject', true);
hd1.Stage1.info, hd1.Stage1.info
% hd1.Stage(1).cost, hd1.Stage(2).cost, info(hd1), realizemdl(hd1)
fprintf('\nTotal costs for two-stage design with fdesign.decimator:\n'); 
disp(cost(hd1));
%
%% Two-Stage Decimator Design using designMultistageDecimator
fprintf('\n##########################################################\n')
fprintf('\n#### Two-stage design using designMultistageDecimator ####\n')
hd2 = designMultistageDecimator(M,FT,Fs-Fp,As,'NumStages',2);
hd2.Stage1.info, hd2.Stage2.info
% hd2.Stage1.cost, hd2.Stage2.cost, info(hd2)
fprintf('\nTotal costs for two-stage design with designMultistageDecimator:\n'); 
disp(cost(hd2));
%
%% Three-Stage Decimator Design using designMultistageDecimator
fprintf('\n##########################################################\n')
fprintf('\n#### Three-stage design using designMultistageDecimator ####\n')
hd3 = designMultistageDecimator(M,FT,Fs-Fp,As,'NumStages',3);
hd3.Stage1.info, hd3.Stage2.info, hd3.Stage3.info
% hd3.Stage1.cost, hd3.Stage2.cost, hd3.Stage3.cost, info(hd3)
fprintf('\nTotal costs for three-stage design with designMultistageDecimator:\n'); 
disp(cost(hd3));
%
%% Plots
hfvt = fvtool(hd1,hd2,hd3,'DesignMask','on','Color','White');
legend(hfvt, 'Two-stage decimator design using fdesign.decimator',...
    'Two-stage decimator design using designMultistageDecimator',...
    'Three-stage decimator design using designMultistageDecimator');    
% EOF
