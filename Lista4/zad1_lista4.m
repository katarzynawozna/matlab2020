% Fizyka dla ISSP 2 Lista 4 Katarzyna Wozna
% zadanie z pomp¹

% wczytanie pliku i danych
pompa = 'pompa.dat';
pomiary = importdata(pompa);

t = pomiary(1:6,1);
p = pomiary(1:6,2);

% p0 = p(0) = 760
p0 = 760;

% wyliczenie tau (recznie przeksztalcenie wzoru i podstawienie
tau = -t./(log(p./p0));

% niepewnosci pomiarowe
delta_t = t.*0.05;
delta_p = p.*0.05;

% wykresy
subplot(1, 2, 1);
hold on;
plot(t, p);
title('Wykres p(t)');
errorbar(t, p, delta_t, delta_p, '~>.');
hold off;

subplot(1, 2, 2);
hold on;
semilogy(t, p);
title('Wykres p(t) w skali pó³logarytmicznej');
errorbar(t, p, delta_t, delta_p,'~>.');
hold off;