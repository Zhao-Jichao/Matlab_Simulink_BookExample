% Page89：已知两个传递函数，求串联并联
clear;
clc;

num1 = 6 * [1, 2];
den1 = conv([1, 1], conv([1, 3], [1, 5]));

num2 = [1, 2.5];
den2 = conv([1, 1], [1, 4]);

% 串联连接
[nums, dens] = series(num1, den1, num2, den2);
% 并联连接
[nump, denp] = parallel(num1, den1, num2, den2);
% 生成串联连接传递函数
s_tf = tf(nums, dens);
% 生成并联连接传递函数
p_tf = tf(nump, denp);
