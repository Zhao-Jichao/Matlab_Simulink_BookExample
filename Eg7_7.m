% Page188：已知传函，绘制极坐标图，利用奈氏判据判断稳定性
clear;
clc;

k = 100;
z = [-5];
p = [2, -8, -20];
G = zpk(z,p,k);
nyquist(G);
grid