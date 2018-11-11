clear;
clc;
clf;
 
N = 50;
N2 = 50000;
w0 = pi;
a0 = 5/4;
t = -2:0.01:2;
 
figure(1)
 
subplot(1,2,1)
stem(0,a0);
hold;
an = ones(size(t));
for n = 1:N2
    an(n) = ((-1)^n-1)/((n^2)*(pi^2));
end
for n = 1:11
    stem(n,an(n));
end
xlabel('n')
ylabel('an')
grid;
hold;
 
subplot(1,2,2)
stem(0,0);
hold;
bn = ones(size(t));
for n = 1:N2
    bn(n) = ((-1)^n-2)/(n*pi);
end
for n = 1:11
    stem(n,bn(n));
end
xlabel('n')
ylabel('bn')
grid;
hold;
 
 
figure(2)
 
subplot(1,2,1)
xt = zeros(size(t));
for n = 1:N
    xt = xt+an(n)*cos(n*w0*t)+bn(n)*sin(n*w0*t);
end
xt = xt+a0;
plot(t,xt);
xlabel('t');
ylabel('x(t)');
title('n=50');
hold;
 
subplot(1,2,2)
xt2 = zeros(size(t));
for n = 1:N2
    xt2 = xt2+an(n)*cos(n*w0*t)+bn(n)*sin(n*w0*t);
end
xt2 = xt2+a0;
plot(t,xt2);
xlabel('t');
ylabel('x(t)');
title('n=50000');
hold;
