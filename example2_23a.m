clear;
clc;
clf;
 
N = 10000;
w0 = 1;
a0 = pi/2;
t = -10:0.01:10;
 
figure
 
subplot(1,2,1)
stem(0,a0);
hold;
an = ones(size(t));
for n = 1:N
    an(n) = 2*((-1)^n-1)/(pi*(n^2));
end
for n = 1:20
    stem(n,an(n));
end
xlabel('n')
ylabel('an')
grid;
hold;
 
subplot(1,2,2)
xt = zeros(size(t));
for n = 1:N
    xt = xt+an(n)*cos(n*w0*t);
end
xt = xt+a0;
plot(t,xt);
xlabel('t');
ylabel('x(t)');
hold;