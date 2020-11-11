% Page186：已知传递函数，计算相角稳定裕量和幅值稳定裕量
clear;
clc;

num = 5 * [0.0167, 1];
den = conv(conv(conv([1, 0], [0.03, 1]),[0.0025, 1]),[0.001, 1]);
G = tf(num, den);
w = logspace(0, 4, 50);
bode(G, w);
grid;
% 求稳定裕量
[Gm, Pm, Wcg, Wcp] = margin(G);
