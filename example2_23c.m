clear;
clc;
clf;
 
N = 50;
N2 = 10000;
w0 = 1;
a0 = 1/2;
t = -10:0.01:10;
 
bn = ones(size(t));
for n = 1:N2
    bn(n) = (-(-1)^n)/(pi*n)+1/(pi*n);
end
 
figure
 
subplot(1,2,1)
xt = zeros(size(t));
for n = 1:N
    xt = xt+bn(n)*sin(n*w0*t);
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
    xt2 = xt2+bn(n)*sin(n*w0*t);
end
xt2 = xt2+a0;
plot(t,xt2);
xlabel('t');
ylabel('x(t)');
title('n=10000');
hold;