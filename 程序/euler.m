function result = euler(fun,rstart,rend,u0,N)
h=(rend-rstart)/N;
result= zeros(N+1,1);
result(1,1)=u0;
for i=2:N+1
    t=rstart+h*(i-2);
    u=result(i-1,1);
    result(i,1)=result(i-1,1)+h*fun(t,u);
end
end
    







