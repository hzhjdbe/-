clc;
clear;
close all;

f=@(t,u)4*t*u^(0.5);
real_fun=@(t)(1+t^2)^2;
intervalstart=0;
intervalend=2;
u0=1;
N_ls=[20;40;60;80;100;120;140;160;180;200];
N=20;
%�������ʽ��
question1(f,real_fun,intervalstart,intervalend,N_ls,u0);
%������ֵͼ�����ͼ
question2(f,real_fun,intervalstart,intervalend,N,u0);
%��֤��3.1a=-5�ⲻ�ȶ�
question3(f,real_fun,intervalstart,intervalend,u0,N);


