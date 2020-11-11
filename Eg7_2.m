% Page179：已知传递函数，绘制未知参数的 Bode 图
clear;
clc;

% w 为 10^{-2} 到 10^{2} 之间对数等间距分布的 200 个数
w = [0, logspace(-2, 2, 200)];
% 自然振荡角频率
wn = 0.7;
% 阻尼比的不同取值
tau = [0.1, 0.4, 1.0, 1.6, 2.0];
for j=1:length(tau)
    num = wn^2;
    den = [1, 2*tau(j)*wn, wn^2];
    sys = tf(num, den);
    bode(sys, w);
    hold on
end

