clear; clc;

df = csvread("Donnee.csv", 1, 0); 


scatter(df(:,1), df(:,2), 'r^'); hold on;
scatter(df(:,1), df(:,3), 'bo');
legend("Lynx", "Hare");
xlabel("Ann�e"); ylabel("Population (�1000)");
title("Donn�es Hudson Bay Company : Lynx et Li�vres");
grid on;
