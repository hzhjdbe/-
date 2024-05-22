function result = adams_three_step(fun,rstart,rend,u0,u1,u2,N)
h=(rend-rstart)/N;
result= zeros(N+1,1);
result(1,1)=u0;
result(2,1)=u1;
result(3,1)=u2;
for i=4:N+1
    t=rstart+h*(i-2);
    un=result(i-1,1);
    un_1=result(i-2,1);
    un_2=result(i-3,1);
    result(i,1)=un+(h/12)*(23*fun(t,un)-16*fun(t-h,un_1)+5*fun(t-2*h,un_2));
end
end