clc;
clf;
clear;
 
[y,Fs] = audioread('test.wav');
y2 = resample(y(:,1), 16, 1);
t = (0:size(y2)-1)'/(Fs*16);
dsb_lc = y2.*cos(2*pi*10000*t);
Y = abs(fft(dsb_lc));
f = 0:length(Y)-1;
plot(f(1:length(f)/10)/length(f)*Fs*16, Y(1:length(f)/10));
xlabel('Frequency [Hz]');ylabel('Magnitude')