% Page150：已知传递函数，绘制根轨迹，并在根轨迹任选一点，计算该点增益 K 及其所有极点的位置
clear;
clc;

% 传递函数分子、分母多项式
num = [1 5];
den = conv([1, 1], conv([1, 3], [1, 12]));
% 建立传递函数模型
sys = tf(num, den);
% 绘制根轨迹图
rlocus(sys)
% 计算用户所选定的点处的增益和其他闭环极点
[k, poles] = rlocfind(sys)
% 添加图标题
title('根轨迹图')