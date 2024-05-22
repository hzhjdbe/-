function question1(f,real_fun,intervalstart,intervalend,N_ls,u0)
h_ls= (intervalend-intervalstart)./N_ls;
euler_error=zeros(length(N_ls),1);
adams_error=zeros(length(N_ls),1);
runge_error=zeros(length(N_ls),1);
%euler·¨
for i=1:length(N_ls)
    N=N_ls(i,1);
    realres=realfun(real_fun,intervalstart,intervalend,N);
    res=euler(f,intervalstart,intervalend,u0,N);
    euler_error(i,1)=funerror(realres,res,(intervalend-intervalstart)/N);
end

%adams·¨
for i=1:length(N_ls)
    N=N_ls(i,1);
    realres=realfun(real_fun,intervalstart,intervalend,N);
    res=adams_three_step(f,intervalstart,intervalend,u0,realres(2,1),realres(3,1),N);
    adams_error(i,1)=funerror(realres,res,(intervalend-intervalstart)/N);
end
%runge_kutta·¨
for i=1:length(N_ls)
    N=N_ls(i,1);
    realres=realfun(real_fun,intervalstart,intervalend,N);
    res=runge_kutta(f,intervalstart,intervalend,u0,N);
    runge_error(i,1)=funerror(realres,res,(intervalend-intervalstart)/N);
end
eulerPara=polyfit(log(h_ls),log(euler_error),1);
adamsPara=polyfit(log(h_ls),log(adams_error),1);
rungePara=polyfit(log(h_ls),log(runge_error),1);
disp('euler');
disp(eulerPara);
disp('adams');
disp(adamsPara);
disp('runge_kutta');
disp(rungePara);
end
