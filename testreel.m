clear; close all; clc;


alpha = 3.0; beta = 1.0; gamma = 2.0; delta = 1.0;
u0 = [10; 5];
N = 1000;
dt = 0.01;

[t1, y1] = runge_kutta_4(u0, N, dt, alpha, beta, delta, gamma);

figure;
subplot(2,1,1);
plot(t1, y1(:,1), 'b', t1, y1(:,2), 'r');
xlabel('Temps');
ylabel('Population');
legend('Proies', 'Prédateurs');
title('Lotka-Volterra - Runge-Kutta 4 (simulation libre)');
grid on;

subplot(2,1,2);
plot(y1(:,1), y1(:,2), 'm');
xlabel('Proies');
ylabel('Prédateurs');
title('Plan de phase (simulation libre)');
grid on;

%% ==== CAS 2 : Lynx–Lièvres avec données réelles ====
data = csvread("Donnee.csv", 1, 0);
annees = data(:,1);
lynx_data = data(:,2);
hare_data = data(:,3);
tspan = annees - annees(1);
N2 = 1000;
dt2 = (tspan(end) - tspan(1)) / N2;

% Paramètres ajustés (PDF Mahaffy)
a1 = 0.4807;
a2 = 0.02482;
b1 = 0.9272;
b2 = 0.02756;
Y0 = [34.89; 4.19];

[t2, y2] = runge_kutta_4(Y0, N2, dt2, a1, b1, a2, b2);

idx = round(linspace(1, N2+1, length(annees)));

figure;
plot(annees, hare_data, 'bo', 'DisplayName', 'Hares (données)');
hold on;
plot(annees, lynx_data, 'ro', 'DisplayName', 'Lynx (données)');
plot(annees, y2(idx,1), 'b-', 'DisplayName', 'Hares (modèle)');
plot(annees, y2(idx,2), 'r-', 'DisplayName', 'Lynx (modèle)');
xlabel("Année");
ylabel("Population (×1000)");
title("Lotka-Volterra ajusté aux données Hudson Bay");
legend;
grid on;

figure;
plot(hare_data, lynx_data, 'ko', 'DisplayName', 'Données');
hold on;
plot(y2(idx,1), y2(idx,2), 'g-', 'DisplayName', 'Modèle RK4');
xlabel("Hares");
ylabel("Lynx");
title("Portrait de phase : Lynx vs. Lièvres");
xlim([0 80]); ylim([0 80]);
legend;
grid on;

