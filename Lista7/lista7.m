% Fizyka dla ISSP 2 Katarzyna WoŸna 289847
% Lista 7 Program rysuj¹cy mapê potencja³u elektrycznego

k = 9*10^9;
q = 10; % [C]
C = 10^(-3);
[x, y] = meshgrid(-5:0.25:5, -5:0.25:5);

% Podpunkt A)

r = sqrt(x.^2 + y.^2);
V1 = (k*q)./r;
surf

figure(2);
contourf(x, y, V1); 
hold on;
axis('equal');
hold off;

% Podpunkt B)

l = 1; % odleglosc ³adunków od siebie

r1 = sqrt((x - 1).^2 + y.^2); 
r2 = sqrt((x + 1).^2 + y.^2);
alfa = (r1 - r2)./l;
p = q*l;
Vb = (k.*p.*alfa)./(r1.*r2);

figure(3);
surf(x, y, Vb);

figure(4);
contourf(x, y, Vb);

% Podpunkt C)

D = 50;
a = ones(50, 1); 
x = linspace(-10, 10, 50).*a;
y = rot90(x);
d = 10 - x;
u = q/C;
e = u./d;
U = q*((10/C)/D).*d;

figure(5);
surf(x, y, U)

figure(6);
contourf(x, y, U)