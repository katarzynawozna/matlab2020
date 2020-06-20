% Fizyka dla ISSP 2 289847 Katarzyna WoŸna
% Lista 9 Zadanie 1 b)

clear all;

Q = input('Proszê podaæ wartoœæ ³adunku Q: ');
a = input('Proszê podaæ wartoœæ a: ');
alphad = input('Proszê podaæ k¹t nachylenia: ');

alpha = deg2rad(alphad);

EPS0 = 8.8541 * 10^(-12);

wektorDlug = @(x) sqrt(x(1)^2 + x(2)^2);

rho = Q/a;
dl = 0.001*a;
xline = cos(alpha) .* (-a/2 : dl : a/2);
yline = sin(alpha) .* (-a/2 : dl : a/2); 
v = -0.825*a: 0.15*a : 0.975*a;
u = -0.525*a: 0.15*a : 0.675*a;
[x,y] = meshgrid(v,u);
[M,N] = size(x);
for i = 1 : M
  for j = 1 : N
    for t = 1 : length(xline)
      r(i,j,t,:) = [x(i,j) - xline(t), y(i,j) - yline(t)];
      rabs(i,j,t) = wektorDlug(r(i,j,t,:));
      runit(i,j,t,:) = r(i,j,t,:)/rabs(i,j,t);
      E(i,j,t,:) = rho*dl*runit(i,j,t,:)/(4*pi*EPS0*rabs(i,j,t)^2);
    end;
    Etotx(i,j) = sum(E(i,j,:,1));
    Etoty(i,j) = sum(E(i,j,:,2));
  end;
end;
line([-a/2 a/2].*cos(alpha),[-a/2 a/2].*sin(alpha), 'Color','r');
hold on;
quiver(v,u,Etotx,Etoty);
axis('equal');
hold off;
title('Natê¿enie pola elektrycznego');
xlabel('x[m]');
ylabel('y[m]');