% Page370：给定系统，求最优控制
clear;
clc;

% 系统的状态空间矩阵
A = [0 1; 0 0];
B = [0; 1];
C = [1 0];
D = [0];
% 建立控制系统的状态空间模型
sys = ss(A, B, C, D);
% 计算系统的可控矩阵
control = ctrb(A, B);
% 如果系统的可控矩阵矩阵
if rank(control)==2
    disp('系统是完全能控的！');
else
    disp('系统是不完全能控的！');
end

% 最优控制与最优性能的求解
% 计算最优状态反馈的解
R = 1;
Q = [1 0; 0 1];
[K, P, E] = lqr(A, B, Q, R);

% 分析闭环系统的特性
% 反馈后系统的状态矩阵
A_new = A - B * K;
% 建立闭环控制系统的数学模型
sys_new = ss(A_new, B, C, D);
% 
figure(1)
step(sys)
% figure(2)
hold on
step(sys_new)
legend('before','after')



