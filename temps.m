alpha = 1.1;
beta  = 0.4;
delta = 0.1;
gamma = 0.4;
u0    = [2.5, 1];
T     = 30;

h_list = [0.1, 0.05, 0.025, 0.0125];
n_list = round(T ./ h_list);  % <- Manquait ici

times_euler = zeros(size(h_list));
times_imp   = zeros(size(h_list));
times_cn    = zeros(size(h_list));
times_rk4   = zeros(size(h_list));

for i = 1:length(h_list)
    h = h_list(i);
    N = n_list(i);

    % Euler explicite
    tic;
    euler_exp(u0, N, h, alpha, beta, delta, gamma);
    times_euler(i) = toc;

    % Euler implicite
    tic;
    euler_imp(u0, N, h, alpha, beta, delta, gamma, 1e-10, 50);
    times_imp(i) = toc;

    % Crank–Nicolson
    tic;
    crank_nicolson(u0, N, h, alpha, beta, delta, gamma, 1e-10, 50);
    times_cn(i) = toc;

    % Runge–Kutta 4
    tic;
    runge_kutta_4(u0, N, h, alpha, beta, delta, gamma);
    times_rk4(i) = toc;
end

% Affichage des résultats en log-log
figure;
loglog(h_list, times_euler, '-o', 'DisplayName', 'Euler explicite'); hold on;
loglog(h_list, times_imp,   '-x', 'DisplayName', 'Euler implicite');
loglog(h_list, times_cn,    '-s', 'DisplayName', 'Crank–Nicolson');
loglog(h_list, times_rk4,   '-^', 'DisplayName', 'RK4');

xlabel('Pas de temps h');
ylabel('Temps de calcul (secondes)');
title('Temps de calcul selon les methodes numeriques (Lotka–Volterra)');
legend show;
grid on;
