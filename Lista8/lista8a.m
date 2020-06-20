%Fizyka dla ISSP 2 Katarzyna Wo�na 289847
%Lista 8 podpunkt A)
clear all;
close all;

Ql = input('Podaj g�sto�� �adunku w C/m: ');
Q2 = input('Podaj g�sto�� �adunku w C/m: ');
Q3 = input('Podaj g�sto�� �adunku w C/m: ');
a = input('Podaj promie� pier�cienia w m: ');

EPS0 = 8.854e-12;
Qtot1 = 2*pi*a*Ql; % ca�kowity �adunek1
Qtot2 = 2*pi*a*Q2; % ca�kowity �adunek2
Qtot3 = 2*pi*a*Q3; % ca�kowity �adunek3
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
xlabel ('z (m)'), ylabel ('Nat�zenie pola elektrycznego (V/m)');
title ('Por�wnanie nat�enia pola elektrycznego');
plot (z, E1, 'r--');
plot (z, E2, 'r--');
plot (z, E3, 'r--');
legend ('Nat�enie pola od na�adowanego pier�cienia',
'Nat�enie pola od �adunku punktowego',1);
hold off;