% ϵͳ΢�ַ�����������

% ΢�ַ��̺�����״̬����
function xdot = Eg4_2_rlcsys(t,x)
% ��ѹ�����衢��С�����ֵ
Vs = 1.5; R=1.6; L=2.1; C=0.30;
% ������ϵʽ
xdot = [x(2)/C; 1/L*(Vs-x(1)-R*x(2))];

% ��ʽ
% function xdot = filename(t, x)
% xdot = [����ʽ1; ����ʽ2; ...; ����ʽn-1]
% ����ʽ1��Ӧ x1'=x2
% ����ʽ2��Ӧ x2'=x3
% ����ʽ3��Ӧ x3'=x4
% ...
% ����ʽn-1��Ӧ xn-1'=xn

% ������, x(1)=Vo, x(2)=iL, x(1)'=x(2)/c, x(2)'=(Vs-x(1)-R*x(2))/L
