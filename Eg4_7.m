% Page84：根据传递函数求部分分式形式
clear;
clc;

num = [2 0 9 1];        % 分子多项式系数行向量
den = [1 1 4 4];        % 分母多项式系数行向量
[r, p, k] = residue(num, den);      % 求取部分分式表示