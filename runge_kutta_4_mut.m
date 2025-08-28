function [t, y] = runge_kutta_4_mut(u0, N, dt, alpha, bet, del, gam)
 y = zeros(N+1, 2); t = zeros(N+1, 1);
 y(1,:) = u0(:); t(1) = 0;
 f = F_mut(alpha, bet, del, gam);
 for n = 1:N
 t(n+1) = n*dt;
 k1 = f(y(n,:)');
 k2 = f(y(n,:)' + 0.5*dt*k1);
 k3 = f(y(n,:)' + 0.5*dt*k2);
 k4 = f(y(n,:)' + dt*k3);
 y(n+1,:) = y(n,:) + (dt/6)*(k1 + 2*k2 + 2*k3 + k4)';
 end
end
