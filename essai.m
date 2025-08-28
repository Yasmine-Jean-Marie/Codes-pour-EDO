clear;close all;clc;
alpha = 2; beta = 1; delta = 0.75; gamma = 1.5;
f = F(alpha, beta, delta, gamma);  % f est maintenant une fonction @(u)
u0 = [10; 5];
val = f(u0);
disp(val);
