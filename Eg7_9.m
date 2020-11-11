% Page189：根据仿真得到的系统线性状态空间模型，求取频域性能指标
clear;
clc;

% 以下指令放置在命令行界面运行
% 提取 Simulink 模型的线性状态空间模型
[A, B, C, D] = linmod('Eg7_9');
sys = ss(A, B, C, D);
% 求取频域指标
margin(sys);
