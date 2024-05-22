function question3(f,real_fun,intervalstart,intervalend,u0,N)
T=linspace(intervalstart,intervalend,N+1);
real_result=realfun(real_fun,intervalstart,intervalend,N);
ex3_1_result=example3_1(f,intervalstart,intervalend,u0,N);
figure(3); 
plot(T,real_result,'-*');
hold on;
plot(T,ex3_1_result,'--');
hold on;
legend('真实解','例3.1中a=-5时的解');
title('解图像');
end
