% Page90：已知前向传递函数，求闭环传递函数和负反馈传递函数
clear;
clc;

% 前向传递函数
num1 = [1, -1];
den1 = [1, -5, -2];
% 反馈传递函数
num2 = [1, 1];
den2 = [1, 3, 2];
% 闭环连接
[numc, denc] = cloop(num1, den1);
% 反馈连接
[numf, denf] = feedback(num1, den1, num2, den2);
% 生成闭环传递函数
c_tf = tf(numc, denc);
% 生成反馈连接传递函数
f_tf = tf(numf, denf);


