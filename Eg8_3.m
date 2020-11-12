% Page200：已知开环传函，采用比例积分控制，求单位阶跃响应
clear;
clc;

G = tf(1, conv(conv([1,1],[2,1]),[5,1]));
% 比例系数
Kp = 2;
% 5 个不同的积分时间
ti = [3, 6, 14, 21, 28];
for i=1:5
    % 建立各个不同的比例积分控制作用下的系统开环传递函数
    G1 = tf([Kp, Kp/ti(i)], [1,0]);
    % 建立相应的闭环传递函数
    sys = feedback(G1*G, 1);
    step(sys);
    hold on
end

    