% Page112：使用游动鼠标法和编程法求取系统的性能指标
clear;
clc;

% 建立零极点模型
G = zpk([ ], [-1+3i, -1-3i], 3);
% 求取阶跃响应
step(G);

% 以上为游动鼠标法
% 以下为编程法

% 建立零极点模型
G = zpk([ ], [-1+3i, -1-3i], 3);
% 计算最大峰值时间和它对应的超调量
C = dcgain(G);
% 求取阶跃响应
[y, t] = step(G);
plot(t,y)
grid
% 取得最大峰值时间
[Y, k] = max(y);
timetopeak = t(k);
% 计算超调量
percentovershoot = 100 * (Y-C)/C;
% 计算上升时间
n = 1;
while y(n) < C
    n = n+1;
end
risetime = t(n);
% 计算稳态响应时间
i = length(t);
while (y(i)>0.98*C)&(y(i)<1.02*C)
    i = i-1;
end
settlingtime = t(i);




