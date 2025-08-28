function y = Fcomp(alpha, bet, del, gam, mu, nu)
 y = @(u) [u(1)*(alpha - bet*u(1)-gam*u(2));
 u(2)*( del- mu*u(2)-nu*u(1))];
end
