%% initialize/ clean-up environment
clc
clearvars
close all;
%% load spectral data from prev. simulations

load('./dsm_l1/data/dat_spectral_analysis1.mat');
f1 = f; sqdBFS1 = sqdBFS;
load('./dsm_l2/data/dat_spectral_analysis2.mat');
f2 = f; sqdBFS2 = sqdBFS;

%% plot data to compare

plot(f1, sqdBFS1, 'linewidth', 1.5);
axis([0 0.1 -150 0]);
hold on;
plot(f2, sqdBFS2, 'linewidth', 1, 'Color', 'r');
axis([0 0.1 -150 0]);
xlabel('Frequency f/fs'); ylabel('DFT Magnitude in dBFS')
legend("Spectrum with L=1", "Spectrum with L=2")
title("Comparison of Spectral NTF-Characteristics (L1 & L2)");
grid minor;

fprintf("")



