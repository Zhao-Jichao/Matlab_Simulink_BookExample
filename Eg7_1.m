% Page178：已知传递函数，绘制 Nyquist 图
clear;
clc;

num = 5;
den = [3,1];
G = tf(num, den);
% 绘制 Nyquist 曲线并添加栅格
nyquist(G);
grid

