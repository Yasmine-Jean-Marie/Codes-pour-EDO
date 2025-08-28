function [t,y]=crank_nicolson(u0,N,dt,alpha,bet,del,gam,tol,kmax)
  y=zeros(N+1,2);
  t=zeros(N+1,1);
  y(1,:)=u0;
  t(1)=0;

  for i=1:N
    t(i+1)=i*dt;
    X0=y(i,:);
    y(i+1,:)=newton_crank(y(i,:), X0, alpha, bet, gam, del, tol, kmax, dt);
  end


 end
