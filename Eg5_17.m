% Page131����֪���ݺ������ж��ȶ��ԣ������㼫��ͼ
clear;
clc;

% ������㡢���㡢����
z = -2.5;
p = [0, -0.5, -0.7, -3];
k = 0.2;
% �����㼫����ʽ�Ŀ������ݺ���
Go = zpk(z,p,k);
% ��λ����������
Gc = feedback(Go, 1);
% �����ջ����ݺ���
Gctf = tf(Gc);
% ��ȡ�ջ����ݺ�������������ʽ
dc = Gctf.den;
% ����������ʽϵ��ת��Ϊ�ַ���ʽ�ĺ��������ڲ鿴
dens = poly2str(dc{1}, 's');

% ��ȡ�����ʽϵ��
den = [1, 4.2, 3.95, 1.25, 0.5];
% ��ȡ������
p = roots(den);
% �����㼫��ͼ
pzmap(Gctf);
grid
