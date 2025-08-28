clear;close all;clc;
alpha = 1;
beta  = 0.5;
gamma = 1.5;
delta = 1;
mu=0.5;
nu =0.1;


u0 = [1; 0.5];  % Proies, Predateurs


N = 1000;
dt = 0.01;
tol = 1e-6;
kmax = 50;

[t, y] = runge_kutta_4_comp(u0, N, dt, alpha, beta, delta, gamma, mu,nu);

figure(1); clf;

subplot(2, 1, 1);

plot(t, y(:, 1), 'b', t, y(:, 2), 'r');
xlabel('Temps');
ylabel('Population');
legend('espece 1', 'espece 2 ');
title('Lotka-Volterra en compétition - Methode de runge-kutta-4');

subplot(2, 1, 2);
plot(y(:, 1), y(:, 2), 'r');
xlabel('espece 1');
ylabel('espece 2');
title('Evolution de la population dans le plan de phase');


