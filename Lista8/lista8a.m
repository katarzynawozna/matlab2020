%Fizyka dla ISSP 2 Katarzyna WoŸna 289847
%Lista 8 podpunkt A)
clear all;
close all;

Ql = input('Podaj gêstoœæ ³adunku w C/m: ');
Q2 = input('Podaj gêstoœæ ³adunku w C/m: ');
Q3 = input('Podaj gêstoœæ ³adunku w C/m: ');
a = input('Podaj promieñ pierœcienia w m: ');

EPS0 = 8.854e-12;
Qtot1 = 2*pi*a*Ql; % ca³kowity ³adunek1
Qtot2 = 2*pi*a*Q2; % ca³kowity ³adunek2
Qtot3 = 2*pi*a*Q3; % ca³kowity ³adunek3
dz = 0.01*a;
z = 20*dz:dz:10*a;
Ez1 =(z * Qtot1)./(4*pi*EPS0*sqrt((z.^2 + a^2).^3));
Ez2 =(z * Qtot2)./(4*pi*EPS0*sqrt((z.^2 + a^2).^3));
Ez3 =(z * Qtot3)./(4*pi*EPS0*sqrt((z.^2 + a^2).^3));
% dla z>>a
E1 = Qtot1./(4*pi*EPS0*z.^2);
E2 = Qtot2./(4*pi*EPS0*z.^2);
E3 = Qtot3./(4*pi*EPS0*z.^2);


plot(z, Ez1), hold on;
plot(z, Ez2), hold on;
plot(z, Ez3), hold on;
xlabel ('z (m)'), ylabel ('Natêzenie pola elektrycznego (V/m)');
title ('Porównanie natê¿enia pola elektrycznego');
plot (z, E1, 'r--');
plot (z, E2, 'r--');
plot (z, E3, 'r--');
legend ('Natê¿enie pola od na³adowanego pierœcienia',
'Natê¿enie pola od ³adunku punktowego',1);
hold off;