function [t, y] = runge_kutta_4(u0, N, dt, alpha, beta, delta, gamma)

  y = zeros(N+1, 2);
  t = zeros(N+1, 1);
  y(1,:) = u0(:)';
  t(1) = 0;

  f = F(alpha, beta, delta, gamma);

  for n = 1:N
    t(n+1) = n* dt;
    Un=reshape(y(n,:),[],1);
    k1 = f(Un) ;
    k2 = f(Un+ 0.5 * dt * k1);
    k3 = f(Un + 0.5 * dt * k2);
    k4 = f(Un + dt * k3);

    y(n+1,:) = reshape(Un + (dt / 6) * (k1 + 2*k2 + 2*k3 + k4),1,[]);
  end

end
