% Page73：求输出值并画出曲线
% 程序主函数代码如下：

% clear all
t0 = 0; tfinal = 10;    % 响应时间
x0 = [0.2; 0];          % 初始化，电感电流0，电容电压0.2
% Eg4_2_rlcsys是系统微分方程的描述函数
[t, x] = ode45('Eg4_2_rlcsys', [t0 tfinal], x0);

% 绘制状态响应图并添加栅格
figure(1); subplot(211); plot(t, x(:,1)); grid
title('电容电压/V'); xlabel('时间/s');
% 绘制状态响应图并添加栅格
figure(1); subplot(212); plot(t, x(:,2)); grid
title('电感电流/A'); xlabel('时间/s');

figure(2); vc=x(:,1); i=x(:,2);
plot(vc, i); grid
title('电感电流与电容电压的关系曲线');
xlabel('电容电压/v'); ylabel('电感电流/A');

