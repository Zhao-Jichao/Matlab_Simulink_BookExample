% Page148：已知传递函数，画出零极点，求出零极点
clear;
clc;

% 传递函数分子、分母多项式
num = 2.5 * [1, 6];
den = conv([1, 2, 3], [1, 5]);
% 传递函数模型
sys = tf(num, den);
% 绘制零极点图
pzmap(sys);
% 输出零极点
[p, z] = pzmap(sys);
% 添加图标题
title('零极点图')


