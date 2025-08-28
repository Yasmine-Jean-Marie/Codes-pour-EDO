function fig_erreur_globale()
alpha = 1.1; beta = 0.4; delta = 0.1; gamma = 0.4;
u0 = [2.5, 1]; T = 30;
hs = logspace(-3, -1, 8);

h_ref = 1e-4;
N_ref = round(T / h_ref);
[~, uref] = runge_kutta_4(u0, N_ref, h_ref, alpha, beta, delta, gamma);

errs_euler = zeros(size(hs));
errs_crank = zeros(size(hs));
errs_imp = zeros(size(hs));

for i = 1:length(hs)
    h = hs(i); N = round(T / h);
    [~, u1] = euler_exp(u0, N, h, alpha, beta, delta, gamma);
    [~, u2] = crank_nicolson(u0, N, h, alpha, beta, delta, gamma, 1e-10, 50);
    [~, u3] = euler_imp(u0, N, h, alpha, beta, delta, gamma, 1e-10, 50);
    errs_euler(i) = erreur_globale(u1, uref, h, h_ref);
    errs_crank(i) = erreur_globale(u2, uref, h, h_ref);
    errs_imp(i)   = erreur_globale(u3, uref, h, h_ref);
end

loglog(hs, errs_euler, 'r-o', 'DisplayName', 'Euler explicite'); hold on;
loglog(hs, errs_crank, 'b-s', 'DisplayName', 'Crank–Nicolson');
loglog(hs, errs_imp,   'g-^', 'DisplayName', 'Euler implicite');
xlabel('Pas de temps h'); ylabel('Erreur maximale');
title('Erreur globale vs h (log-log)');
legend show; grid on;
saveas(gcf, 'erreur_globales.png');
end

function err = erreur_globale(usol, uref, h, h_ref)
N = size(usol,1); T = (N-1)*h;
tref = linspace(0, T, size(uref,1));
t_test = linspace(0, T, N);
uref_interp = interp1(tref, uref, t_test);
diff = usol - uref_interp;
err = max(vecnorm(diff, 2, 2));
end

