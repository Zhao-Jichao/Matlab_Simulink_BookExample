% Page114：已知开环传函，计算阻尼比不同时单位负反馈系统的单位阶跃响应曲线
clear;
clc;

% 固有频率
wn = 1;
% 7 个不同的阻尼比取值
sigma = [0, 0.2, 0.4, 0.6, 0.9, 1.2, 1.5];
num = wn*wn;
% 将 t 在 0 到 20 之间均等分成 200 份
t = linspace(0, 20, 200);
for j = 1:7
    % 求开环传函的分母
    den = conv([1,0], [1,2*wn*sigma(j)]);
    % 建立开环传递函数
    s1 = tf(num, den);
    % 建立单位负反馈系统的传递函数
    sys = feedback(s1, 1);
    % 求取单位阶跃响应
    y(:, j) = step(sys, t);
end
% 在同一图上绘制单位阶跃响应曲线并添加栅格
plot(t, y(:, 1:7));grid
% 添加图标题
title('典型二阶系统取不同阻尼比时的单位阶跃响应');
% 放置 sigma 取不同值的文字注释
gtext('sigma=0');
gtext('sigma=0.2');
gtext('sigma=0.4');
gtext('sigma=0.6');
gtext('sigma=0.9');
gtext('sigma=1.2');
gtext('sigma=1.5');


