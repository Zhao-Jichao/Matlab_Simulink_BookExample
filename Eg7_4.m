% Page180：已知传递函数，计算谐振幅值和谐振频率
clear;
clc;

num = 3.6;
den = [1, 3, 5];
G = tf(num, den);
[Mr, Pr, Wr] = mr(G)
bode(G)

function [Mr, Pr, Wr] = mr(G)
% 得到系统 Bode 图相应的幅值 mag、相角 pha 与角频率点 w 矢量
[mag, pha, w] = bode(G);
magn(1, :) = mag(1, :);
phase(1, :) = pha(1, :);
[M, i] = max(magn);
% 求得谐振峰值
Mr = 20 * log(M);
Pr = phase(1, i);
% 求得谐振频率
Wr = w(i, 1);
end
