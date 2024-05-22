function result = runge_kutta(fun,rstart,rend,u0,N)
h=(rend-rstart)/N;
result= zeros(N+1,1);
result(1,1)=u0;
for i=2:N+1
    t=rstart+(i-2)*h;
    u=result(i-1,1);
    k1=fun(t,u);
    k2=fun(t+0.5*h,u+0.5*h*k1);
    k3=fun(t+0.5*h,u+0.5*h*k2);
    k4=fun(t+h,u+h*k3);
    result(i,1)=u+(h/6)*(k1+2*k2+2*k3+k4);
end
