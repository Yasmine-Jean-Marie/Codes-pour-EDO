clear; clc;

df = csvread("Donnee.csv", 1, 0); 


scatter(df(:,1), df(:,2), 'r^'); hold on;
scatter(df(:,1), df(:,3), 'bo');
legend("Lynx", "Hare");
xlabel("Année"); ylabel("Population (×1000)");
title("Données Hudson Bay Company : Lynx et Lièvres");
grid on;
