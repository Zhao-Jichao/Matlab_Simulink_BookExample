% Page119：已知闭环传函，求未知量取不同值的单位阶跃响应
clear;
clc;

% 3 个不同的微分时间常数
tau = [0, 0.2, 0.4];
% 将 t 在 0 到 8 之间均等分为 80 份
t = linspace(0, 8, 80);
% 开环传递函数的分子、分母多项式
num = 4;
den = [1 2 4];
for j=1:3
    % 建立系统传递函数
    sys = tf(conv(num, [tau(j), 1]),den);
    % 求取单位阶跃响应
    y(:,j) = step(sys, t);
end
% 将 3 条响应曲线绘制在同一个图傻姑娘并添加栅格
plot(t,y(:, 1:3)); grid;
title('比例微分控制，不同微分时间下的系统阶跃响应');
gtext('tau=0');
gtext('tau=0.2');
gtext('tau=0.4');






