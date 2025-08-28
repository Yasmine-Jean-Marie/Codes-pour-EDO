clear;close all;clc;
alpha = 3.0;
beta  = 1.0;
gamma = 2.0;
delta = 1.0;
[t, y] = euler_exp([10; 5], 1000, 0.01, alpha, beta, delta, gamma);
figure(1);clf;
subplot(2,1,1)
plot(t, y(:,1), 'b', t, y(:,2), 'r');
legend('Proies', 'Predateurs');
xlabel('Temps');
ylabel('Population');
title('Modele de Lotka-Volterra - Methode d''Euler explicite');
subplot(2,1,2)
plot(y(:,1),y(:,2),'r');
xlabel('Proies');
ylabel('Predateurs');
title('Evolution de la population dans le plan de phase');
