clear; close all; clc;

data = csvread("Donnee.csv", 1, 0);
annees = data(:,1);
lynx_data = data(:,2);
hare_data = data(:,3);
tspan = annees - annees(1);

a1 = 0.4807;
a2 = 0.02482;
b1 = 0.9272;
b2 = 0.02756;
H0 = 34.89;
L0 = 4.19;
Y0 = [H0; L0];
N = 1000;
t0 = tspan(1);
tf = tspan(end);
dt = (tf - t0) / N;
tvals = linspace(t0, tf, N+1);

[~, Y] = runge_kutta_4(Y0, N, dt, a1, b1, a2, b2);
Y = Y';
idx = round(linspace(1, length(tvals), length(annees)));

figure;
plot(annees, hare_data, 'bo', 'DisplayName', 'Hares (données)');
hold on;
plot(annees, lynx_data, 'ro', 'DisplayName', 'Lynx (données)');
plot(annees, Y(1,idx), 'b-', 'DisplayName', 'Hares (modèle)');
plot(annees, Y(2,idx), 'r-', 'DisplayName', 'Lynx (modèle)');
xlabel("Année");
ylabel("Population (×1000)");
title("Modèle Lotka-Volterra ajusté (RK4)");
legend;
grid on;
saveas(gcf, "lotka_volterra_temps.png");

figure;
plot(hare_data, lynx_data, 'ko', 'DisplayName', 'Données');
hold on;
plot(Y(1,idx), Y(2,idx), 'g-', 'DisplayName', 'Modèle RK4');
xlim([0 80])

