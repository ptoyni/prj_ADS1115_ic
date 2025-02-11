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

%% load time domain data and plot
clc;
close all;

load('./dsm_l1/data/dat_time_domain_plot.mat');
t1 = t; u1 = u; v1 = v; y1 = y; diff1 = diff;
load('./dsm_l2/data/dsm_l2_time_domain_plot.mat');
t2 = t; u2 = u; v2 = v; y2 = y; 

figure(1);
    stairs(t1, v1, 'LineWidth', 1.5); hold on;
    stairs(t2, v2, 'LineWidth', 1.5); 
    plot(t, u, 'LineWidth', 2);hold off;
    axis([ min(t1) max(t1)/9 1.1*min(v1) 1.1*max(v1) ]);
    xlabel('Time t/T'); ylabel('Amplitude');
    legend('PWM output L1','PWM output L2','Input u');
    title('Time Domain Comparison L1 and L2');





