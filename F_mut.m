function y=F_mut(alpha,bet,del,gam)
  y=@(u) [u(1)*(alpha+ bet*u(2));
  u(2)*(gam + del*u(1)) ] ;
end
