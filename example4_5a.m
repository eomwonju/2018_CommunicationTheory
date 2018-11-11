clc;
clf;
clear;

[y,Fs] = audioread('test.wav');
f = 0:length(y)-1;
Y = abs(fft(y));
subplot(2,1,1);
plot(f/Fs, y);xlabel('Time [s]');ylabel('Amplitude')
subplot(2,1,2);
plot(f(1:length(f)/2)/length(f)*Fs, Y(1:length(f)/2));
xlabel('Frequency [Hz]');ylabel('Magnitude')