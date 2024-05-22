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
%求各个格式阶
question1(f,real_fun,intervalstart,intervalend,N_ls,u0);
%画出数值图与误差图
question2(f,real_fun,intervalstart,intervalend,N,u0);
%验证例3.1a=-5解不稳定
question3(f,real_fun,intervalstart,intervalend,u0,N);


