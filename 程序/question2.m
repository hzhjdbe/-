function question2(f,real_fun,intervalstart,intervalend,N,u0)

real_result=realfun(real_fun,intervalstart,intervalend,N);
euler_result=euler(f,intervalstart,intervalend,u0,N);
adams_result=adams_three_step(f,intervalstart,intervalend,u0,real_result(2,1),real_result(3,1),N);
rg_result=runge_kutta(f,intervalstart,intervalend,u0,N);

euler_error=abs(euler_result-real_result);
adams_error=abs(adams_result-real_result);
runge_error=abs(rg_result-real_result);

T=linspace(intervalstart,intervalend,N+1);
figure(1); 
plot(T,real_result);
hold on;
plot(T,euler_result,'-*');
hold on;
plot(T,adams_result,'-+');
hold on;
plot(T,rg_result,'-.');
hold on;
legend('真实解','euler法','三步adams外插法','4阶runge-kutta法');
title('数值图像h=0.1');
figure(2); 
plot(T,euler_error,'-*');
hold on;
plot(T,adams_error,'--');
hold on;
plot(T,runge_error,'-.');
hold on;
legend('euler法','三步adams外插法','4阶runge-kutta法');
title('误差图像h=0.1');
end

