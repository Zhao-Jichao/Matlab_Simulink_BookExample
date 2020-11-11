% Page186：已知传递函数，计算稳定裕量的变化
clear;
clc;

K = [5, 500, 800, 3000];
for j=1:4
    num = K(j)*[0.0167, 1];
    den = conv(conv(conv([1, 0], [0.03, 1]), [0.0025, 1]), [0.001, 1]);
    G = tf(num, den);
    % 计算幅值裕度、相角裕度以及对应的频率
    y(j) = allmargin(G);
end




