% Fizyk dla ISSP 2 Katarzyna WoŸna 289847
% Lista 10

clear all;clf;clc;

r = -1:0.1:1; % zakres

%ustawianie wartoœci ³adunków oraz ich po³o¿enia 
q1 = -20;
q2 = 15;
q3 = 25;
x1 = 0;
x2 = 0.35;
x3 = -0.35;
y1 = 0.35;
y2 = 0;
y3 = 0;

EPS0 = 8.854e-12;

[x,y] = meshgrid(r);

R1=((x+x1).^2+(y+y1).^2).^0.5;
R2=((x+x2).^2+(y+y2).^2).^0.5;
R3=((x+x3).^2+(y+y3).^2).^0.5;

V = 1./(4*pi*EPS0)*(q1./R1 + q2./R2 + q3./R3) %obliczanie potencjalu dla 3 ³adunków

figure(1) % Potencja³ V i natê¿enia pola E
[px,py] = gradient(-V,0.1,0.1);
contour(r,r,V, 20); 
hold on;
quiver(r,r,px,py); 
hold off;
colorbar;
title('Linie stalego potencjalu V i wektory natezenia pola E 3 dowolnych ladunków');
figure(2) % Wykres 3D potencja³u
surf(x,y,V);
axis off;
view(- 37.5,20);
colorbar;
title('Wykres 3-D potencjalu V 3 ladunków');