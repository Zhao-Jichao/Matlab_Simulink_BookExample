% Page180：已知高阶系统传递函数，绘制 Nichols 图
clear;
clc;

num = [0.0001 0.0281 1.06356 9.6];
den = [0.0006 0.0286 0.06356 6];
G = tf(num, den);
% 绘制等 M 圆和等 N 圆
ngrid('new')
% 绘制系统的 Nichols 图
nichols(G)

