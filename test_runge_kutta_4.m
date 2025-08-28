clear;close all;clc;
alpha = 3.0;
beta  = 1.0;
gamma = 2.0;
delta = 1.0;


u0 = [10; 5];  % Proies, Predateurs


N = 1000;
dt = 0.01;
tol = 1e-6;
kmax = 50;

[t, y] = runge_kutta_4(u0, N, dt, alpha, beta, delta, gamma);

figure(1); clf;

subplot(2, 1, 1);
plot(t, y(:, 1), 'b', t, y(:, 2), 'r');
xlabel('Temps');
ylabel('Population');
legend('Proies', 'Predateurs');
title('Lotka-Volterra - Methode de runge-kutta-4');

subplot(2, 1, 2);
plot(y(:, 1), y(:, 2), 'r');
xlabel('Proies');
ylabel('Predateurs');
title('Evolution de la population dans le plan de phase');


