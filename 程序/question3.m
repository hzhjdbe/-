function question3(f,real_fun,intervalstart,intervalend,u0,N)
T=linspace(intervalstart,intervalend,N+1);
real_result=realfun(real_fun,intervalstart,intervalend,N);
ex3_1_result=example3_1(f,intervalstart,intervalend,u0,N);
figure(3); 
plot(T,real_result,'-*');
hold on;
plot(T,ex3_1_result,'--');
hold on;
legend('��ʵ��','��3.1��a=-5ʱ�Ľ�');
title('��ͼ��');
end
