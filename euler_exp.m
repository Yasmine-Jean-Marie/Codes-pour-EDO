function [t,y]=euler_exp(u0,N,dt,alpha,bet,del,gam)
  y=zeros(N+1,2);
  t=zeros(N+1,1);
  y(1,:)=u0;
  t(1)=0;
  fu=F(alpha,bet,del,gam);
  for i=1:N
    t(i+1)=i*dt;
    f=fu(y(i,:));
    y(i+1,1)=y(i,1)+(dt*f(1));
    y(i+1,2)=y(i,2)+(dt*f(2));
  end


 end
