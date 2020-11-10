% Page117：已知二阶系统，绘制tau不同值时，单位负反馈系统的单位阶跃曲线
clear;
clc;

% 时间常数
T = 1;
% 开环增益 K 的值
K = 1;
% 6 个不同的微分反馈系数
tau = [0, 0.05, 0.2, 0.5, 1.0, 2.4];
% 将 t 在 0 到 20 之间均等分成 200 份
t = linspace(0,20,200);
% 开环传递函数的分子多项式
num = 1;
for j=1:6
    % 求取开环传函的分母表达式
    den=conv([1,0], [T, 1+tau(j)]);
    % 建立开环传函
    s1 = tf(num*K, den);
    % 建立单位负反馈系统的传递函数
    sys = feedback(s1, 1);
    % 求取单位阶跃响应
    y(:,j) = step(sys, t);
end
% 在同一图上绘制单位阶跃响应曲线并添加栅格
plot(t, y(:,1:6)); grid
% 放置 K 取不同值的文字注释
gtext('tau=0');
gtext('tau=0.05');
gtext('tau=0.2');
gtext('tau=0.5');
gtext('tau=1.0');
gtext('tau=2.4');


