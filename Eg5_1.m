% Page108：已知闭环传递函数，求单位阶跃响应和单位斜坡响应
clear;
clc;

num = [1];
den = [1, 0.4, 1];
% 响应时间
t = [0:0.1:10];
% u 为单位斜坡输入
u = t;
% 单位阶跃响应
y = step(num, den, t);
% 单位斜坡响应
y1 = lsim(num, den, u, t);
% 将两条响应曲线绘制在同一个图上
plot(t, y, 'b-', t, y1, 'r:')
% 添加栅格
grid
% 添加横纵坐标轴
xlabel('Time [ses] t'); ylabel('y');
% 添加图标题
title('单位阶跃和单位斜坡输入响应曲线');
% 添加文字标注
legend('单位阶跃响应曲线', '单位斜坡响应曲线');
