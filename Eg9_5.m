% Page252：已知系统传递函数，求系统约当标准型
clear;
clc;

num1 = [2, 1];
den1 = [1, 7, 14, 8];
% 求系统的分式表达式
[r1, p1, k1] = residue(num1, den1);
% 对分式结果进行变换，得到约当标准型
A1 = diag(p1);
B1 = ones(length(r1), 1);
C1 = rat(r1);
D1 = 0;
