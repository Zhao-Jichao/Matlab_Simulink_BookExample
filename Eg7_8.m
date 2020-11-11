% Page188：已知传函，绘制极坐标图，利用奈氏判据判断稳定性
clear;
clc;

z = [];
p = [0, -5, -10];
k = 100. * [1, 7.8, 20];
G = zpk(z, p, k(1));
[re1, im1] = nyquist(G);
G = zpk(z, p, k(2));
[re2, im2] = nyquist(G);
G = zpk(z, p, k(3));
[re3, im3] = nyquist(G);
plot(re1(:),im1(:), re2(:),im2(:), re3(:),im3(:))
grid
xlabel('Real Axis');
ylabel('Imaginary Axis');
text(-0.4, -3.6, 'K=1');
text(-2.7, -2.7, 'K=7.8');
text(-4.4, -1.6, 'K=20');


