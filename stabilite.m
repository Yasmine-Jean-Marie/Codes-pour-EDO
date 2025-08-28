alpha = 1.1;
beta  = 0.4;
delta = 0.1;
gamma = 0.4;
u0    = [2.5, 1];
T     = 30;

h_list = [0.1, 0.05, 0.025, 0.0125];
n_list = round(T ./ h_list);

errs_euler = zeros(size(h_list));
errs_imp   = zeros(size(h_list));
errs_cn    = zeros(size(h_list));
errs_rk4   = zeros(size(h_list));

% Solution de référence très fine
h_ref = 1e-4;
N_ref = round(T / h_ref);
[t_ref, y_ref] = runge_kutta_4(u0, N_ref, h_ref, alpha, beta, delta, gamma);

for i = 1:length(h_list)
    h = h_list(i);
    N = n_list(i);

    idx = 1:(h/h_ref):N_ref+1;   % on garde seulement les points multiples de h
    y_exact = y_ref(idx,:);

    [~, y] = euler_exp(u0, N, h, alpha, beta, delta, gamma);
    errs_euler(i) = max(vecnorm(y - y_exact, 2, 2));

    [~, y] = euler_imp(u0, N, h, alpha, beta, delta, gamma, 1e-10, 50);
    errs_imp(i) = max(vecnorm(y - y_exact, 2, 2));

    [~, y] = crank_nicolson(u0, N, h, alpha, beta, delta, gamma, 1e-10, 50);
    errs_cn(i) = max(vecnorm(y - y_exact, 2, 2));

    [~, y] = runge_kutta_4(u0, N, h, alpha, beta, delta, gamma);
    errs_rk4(i) = max(vecnorm(y - y_exact, 2, 2));
end

ref1 = 0.1 * h_list;
ref2 = 0.1 * h_list.^2;
ref4 = 0.1 * h_list.^4;

figure;
set(gcf,'Color','w');
loglog(h_list, errs_euler, '-o', 'LineWidth',1.8); hold on;
loglog(h_list, errs_imp,   '-x', 'LineWidth',1.8);
loglog(h_list, errs_cn,    '-s', 'LineWidth',1.8);
loglog(h_list, errs_rk4,   '-^', 'LineWidth',1.8);
loglog(h_list, ref1, '--', 'LineWidth',1);
loglog(h_list, ref2, '--', 'LineWidth',1);
loglog(h_list, ref4, '--', 'LineWidth',1);
xlabel('Pas de temps (h)','FontSize',12);
ylabel('Erreur maximale','FontSize',12);
title('Convergence des methodes numeriques (Lotka–Volterra)','FontSize',13);
legend('Euler explicite','Euler implicite','Crank–Nicolson','Runge–Kutta 4','O(h)','O(h^2)','O(h^4)');
grid on;
axis tight;
saveas(gcf, 'convergence.png')

