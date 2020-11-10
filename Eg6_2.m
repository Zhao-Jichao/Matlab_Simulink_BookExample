% Page149：已知传递函数，绘制根轨迹
clear;
clc;

% 传递函数分子、分母多项式
num = [1 1];
den = conv([1 0], conv([0.5, 1], [4, 1]));
% 建立传递函数模型
sys = tf(num, den);
% 绘制根轨迹图
rlocus(sys);
% 添加图标题
title('根轨迹图');
