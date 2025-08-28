function X = newton_imp(Xn, X0, alpha, bet, gam, del, tol, kmax, dt)

  X = X0;
  err = tol + 1;
  k = 0;

  f = F(alpha, bet, del, gam);

  while (err > tol && k < kmax)
    fu = f(X0);

    F_val = [
      X0(1) - Xn(1) - dt * fu(1);
      X0(2) - Xn(2) - dt * fu(2)
    ];

    Jf = [
      1 - dt * (alpha - bet * X0(2)),     dt * bet * X0(1);
      -dt * del * X0(2),                 1 - dt * (-gam + del * X0(1))
    ];

    b = Jf \ F_val;
    X = X0(:) - b(:);

    err = norm(X - X0);

    k++;
  end

end

