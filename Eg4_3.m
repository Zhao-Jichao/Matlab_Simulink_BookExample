% Page76：求拉氏变换
clear;
clc;

% 定义符号变量
syms t s;
syms a b positive;
% 冲击函数 delta(t-a) 是用 Maple 函数库中的定义是 Dirca(t-a)
Dt = str2sym('Dirca(t-a)');
% 单位阶跃函数 u(t-b) 是用 Maple 函数库中的定义是 Heaviside(t-b)
Ut = str2sym('Heaviside(t-b)');
% 建立矩阵
Mt = [  Dt, Ut;
        exp(-a*t)*sin(b*t), t^2*exp(-t);];    
% 进行拉氏变换
Ms = laplace(Mt);

