% Page280：已知系统状态矩阵，确定状态反馈矩阵，并计算初始条件下的响应
clear;
clc;

A = [0 1 0; 0 0 1; -1 -5 -6];
B = [0; 0; 1];
% 希望配置的极点
P = [-2+1i*4, -2-1i*4, -10];
% 采用 Ackerman 公式法进行极点配置
K = acker(A, B, P);
% 极点配置后的新系统
sys_new = ss(A-B*K, eye(3), eye(3), eye(3));
% 仿真时间
t = 0:0.1:4;
% 初始条件为 X0=[1 0 0]时的零输入响应
X = initial(sys_new, [1;0;0], t);
% 状态 x1 x2 x3
x1 = [1 0 0]*X';
x2 = [0 1 0]*X';
x3 = [0 0 1]*X';
% 绘图
subplot(3, 1, 1);
plot(t, x1);
subplot(3, 1, 2);
plot(t, x2);
subplot(3, 1, 3);
plot(t, x3);
