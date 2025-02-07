clc
clearvars
close all

data = load('./ad_test.txt', '-ascii');
full_scale = 2^16;
num_samples = 2*860;

t = linspace(0,2,num_samples);

plot(t, data')
xlabel('Time')
ylabel('Voltage')
axis([0, 2, min(data)-0.1 max(data)*1.1])
grid