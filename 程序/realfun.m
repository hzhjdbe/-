function result=realfun(fun,rstart,rend,N)
h=(rend-rstart)/N;
result= zeros(N+1,1);
for i=1:N+1
    result(i,1)=fun(rstart+h*(i-1));
end
end
