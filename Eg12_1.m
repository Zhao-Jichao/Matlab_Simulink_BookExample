% Page336：已知离散系统差分方程，试建立系统的传递函数，显示对象的属性，提取分子和分母多项式，并提取零极点和增益
clear;
clc;

% 建立传递函数模型
numG = [0.1 0.03 -0.07];
denG = [1 -2.7 2.42 -0.72];
G = tf(numG, denG, -1);
% 获得模型属性
get(G);
% 提取分子和分母多项式
[nn, dd] = tfdata(G, 'v');
% 提取对象的零极点和增益
[zz, pp, kk] = zpkdata(G, 'v');
% 画零极点图
pzmap(G);