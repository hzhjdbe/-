function result = example3_1(fun,rstart,rend,u0,N)
h=(rend-rstart)/N;
h=(rend-rstart)/N;
N2=10;
h1=h/N2;
temp_res= euler(fun,rstart,rstart+h1,u0,N2);
result= zeros(N+1,1);
result(1,1)=u0;
result(2,1)=temp_res(1+N2,1);
a=-5;
for i=3:N+1
    t=rstart+(i-2)*h;
    u2=result(i-1,1);
    u1=result(i-2,1);
    result(i-1,1)=(1-a)*u2-a*u1+(0.5*h)*((3-a)*fun(t,u2)-(1+a)*fun(t-h,u1));
end
end
    
    