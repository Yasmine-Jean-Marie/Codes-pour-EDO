function plot_lyapunov_with_trajectory()
  
  alpha = 1.1; beta = 0.4; delta = 0.1; gamma = 0.4;
  u0 = [2.5, 1];   
  T = 30;           
  N = 1000;         
  dt = T/N;

  x = linspace(0.1, 10, 200);
  y = linspace(0.1, 10, 200);
  [X, Y] = meshgrid(x, y);
  V = delta * X - gamma * log(X) + beta * Y - alpha * log(Y);

  figure;
  contour(X, Y, V, 20); hold on;
  xlabel('x (proies)');
  ylabel('y (prédateurs)');
  title('Courbes de niveau de V(x,y) et trajectoire numérique');
  grid on;

  [t, sol] = runge_kutta_4(u0, N, dt, alpha, beta, delta, gamma);
  xsol = sol(:,1); ysol = sol(:,2);

  
  plot(xsol, ysol, 'r', 'LineWidth', 2);
  plot(xsol(1), ysol(1), 'ko', 'MarkerFaceColor', 'k');
  legend('Courbes de niveau de V', 'Trajectoire RK4', 'Position initiale');
  
end
