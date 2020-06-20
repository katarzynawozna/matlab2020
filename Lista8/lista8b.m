%Fizyka dla ISSP 2 Katarzyna WoŸna 289847
%Lista 8 podpunkt B)

clear all;
close all;

Ql = input('Podaj gêstoœæ ³adunku w C/m: ');
a1 = input('Podaj promieñ pierœcienia w m: ');
a2 = input('Podaj promieñ pierœcienia w m: ');
a3 = input('Podaj promieñ pierœcienia w m: ');

EPS0 = 8.854e-12;
Qtot1 = 2*pi*a1*Ql; % ca³kowity ³adunek
dz1 = 0.01*a1;
z1 = 20*dz1:dz1:10*a1;
Ez1 =(z1 * Qtot1)./(4*pi*EPS0*sqrt((z1.^2 + a1^2).^3));
% dla z1>>a1
E1 = Qtot1./(4*pi*EPS0*z1.^2);

subplot(3,1,1);
plot(z1, Ez1), hold on;
plot (z1, E1, 'r--');
xlabel ('z (m)'), ylabel ('Natê¿enie pola elektrycznego (V/m)');
legend ('Natê¿enie pola od na³adowanego pierœcienia',
'Natê¿enie pola od ³adunku punktowego',1);
title ('Porównanie natê¿enia pola elektrycznego');
hold off;

Qtot2 = 2*pi*a2*Ql; % ca³kowity ³adunek
dz2 = 0.01*a2;
z2 = 20*dz2:dz2:10*a2;
Ez2 =(z2 * Qtot2)./(4*pi*EPS0*sqrt((z2.^2 + a2^2).^3));
% dla z2>>a2
E2 = Qtot2./(4*pi*EPS0*z2.^2);

subplot(3,1,2);
plot(z2, Ez2), hold on;
xlabel ('z (m)'), ylabel ('Natê¿enie pola elektrycznego (V/m)');
plot (z2, E2, 'r--');
legend ('Natê¿enie pola od na³adowanego pierœcienia',
'Natê¿enie pola od ³adunku punktowego',1);
title ('Porównanie natê¿enia pola elektrycznego');
hold off;

Qtot3 = 2*pi*a3*Ql; % ca³kowity ³adunek
dz3 = 0.01*a3;
z3 = 20*dz3:dz3:10*a3;
Ez3 =(z3 * Qtot3)./(4*pi*EPS0*sqrt((z3.^2 + a3^2).^3));
% dla z3>>a3
E3 = Qtot3./(4*pi*EPS0*z3.^2);

subplot(3,1,3);
plot(z3, Ez3), hold on;
xlabel ('z (m)'), ylabel ('Natê¿enie pola elektrycznego (V/m)');
plot (z3, E3, 'r--');
legend ('Natê¿enie pola od na³adowanego pierœcienia',
'Natê¿enie pola od ³adunku punktowego',1);
title ('Porównanie natê¿enia pola elektrycznego');
hold off;