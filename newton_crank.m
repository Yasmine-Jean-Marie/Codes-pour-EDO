function X = newton_crank(Xn, X0, alpha, bet, gam, del, tol, kmax, dt)

  X = X0;
  err = tol + 1;
  k = 0;

  f = F(alpha, bet, del, gam);
  fu1=f(Xn);
  while (err > tol && k < kmax)
    fu = f(X0);

    F_val = [
      X0(1) - Xn(1) - (dt/2) * (fu(1)+fu1(1));
      X0(2) - Xn(2) - (dt/2) * (fu(2)+fu1(2))
    ];

    Jf = [
      1 - (dt/2) * (alpha - bet * X0(2)),     (dt/2) * bet * X0(1);
      -(dt/2) * del * X0(2),                 1 - (dt/2) * (-gam + del * X0(1))
    ];

    b = Jf \ F_val;
    X = X0(:) - b(:);

    err = norm(X - X0);

    k++;
  end

end

