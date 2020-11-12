% Page264：已知状态空间模型，进行能控性分解和能观性分解
clear;
clc;

A = [0 0 -1; 1 0 -3; 0 1 -3];
B = [1; 1; 0];
C = [0 1 -2];
% 能控性结构分解
[Ac, Bc, Cc] = ctrbf(A, B, C);
% 能观性结构分解
[Ao, Bo, Co] = obsvf(A, B, C);

% 若想要得到标准形式
Acc = rot90(Ac, 2);
Bcc = rot90(Bc, 2);
Ccc = rot90(Cc, 2);