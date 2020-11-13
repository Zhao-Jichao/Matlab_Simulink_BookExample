% Page371：给定离散系统，求最优控制
clear;
clc;

% 系统的状态矩阵
A = [1 0; -1 1];
B = [1; -1];
C = [1 0];
D = [0];
% 设定指标函数中的 Q、R 矩阵
Q = [100 0; 0 1];
R = [1];
% 建立控制系统的状态空间模型
sys = ss(A, B, C, D);

% 计算最优控制的解
[K, S, E] = dlqr(A, B, Q, R);
% 反馈后系统的状态矩阵
A_new = A - B * K;
% 建立反馈后的系统数学模型
sys_new = ss(A_new, B, C, D);

figure(1)
dstep(A, B, C, D, 1, 10)
% figure(2)
hold on
dstep(A_new, B, C, D, 1, 10)
legend('before','after')