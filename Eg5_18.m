% Page132：建立模型，分析稳定性，绘制阶跃响应曲线，计算稳态误差，分析性能
clear;
clc;

% 传递函数的分子、分母多项式系数
num1 = [20];
den1 = [1 2 0];
% 二阶系统的传递函数
sys1 = tf(num1, den1);
% 微分环节传递函数的分子、分母多项式系数
num2 = [0.1 0];
den2 = [0 1];
% 微分环节的传递函数
sys2 = tf(num2, den2);
% 内环反馈的传递函数
sys_inner = feedback(sys1, sys2);
% 外环反馈的传递函数
sys_outer = feedback(sys_inner, 1);

% 根据求得的系统传递函数，利用 roots 命令判断系统的稳定性
% 闭环系统传递函数分母多项式系数
den = [1 4 20];
% 求闭环系统特征多项式的根
roots(den)
% 利用 pzmap 命令绘制系统的零极点图
pzmap(sys_outer);
grid on;

% 计算系统的阶跃响应
% 闭环系统传递函数分子、分母多项式系数
num = [20];
den = [1 4 20];
% 计算闭环系统的阶跃响应
[y, t, x] = step(num, den);
% 绘制阶跃响应曲线
plot(x, y);
grid on;

% 计算系统的超调量
% 阶跃响应的稳态值
y_stable = 1;
% 闭环系统阶跃响应的最大值
max_response = max(y);
% 阶跃响应的超调量
sigma = (max_response - y_stable) / y_stable;

% 计算系统的上升时间
% 遍历响应曲线
for i=1:length(y)
    % 如果某个时刻系统的输出值大于稳态值
    if y(i)>y_stable
        % 循环中断
        break;
    end
end
% 计算此时对应的时间，就是阶跃响应的上升时间
tr = x(i)
% 计算系统的峰值时间
% 查找系统阶跃响应的最大值
[max_response, index] = max(y);
% 计算此时对应的时间，就是阶跃响应的峰值时间
tp = x(index)
% 计算系统的调整时间 ---> 取物插带为 2
% 遍历响应曲线
for i=1:length(y)
    % 如果当前响应值在误差带内
    if max(y(i:length(y))) <= 1.02 * y_stable
        if min(y(i:length(y))) >= 0.98 * y_stable
            % 循环退出
            break;
        end
    end
end
% 计算此时对应的时间，就是系统阶跃响应的调整时间
ts = x(i)


