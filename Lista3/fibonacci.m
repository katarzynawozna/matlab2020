% Fizyka 2 Lista 3 Katarzyna Wozna 289847
% Zadanie 1 - ciag Fibonacciego

n = 0;
f = [];
x = [0:16];

file = fopen('fibonnaci.txt', 'w'); %tworzenie pliku w trybie zapisu


% wykorzystanie petli do generowania kolejnych wyrazow ci¹gu

while n <= 16
  F = (1/sqrt(5))*((((1+sqrt(5))/2)^n) - (((1-sqrt(5))/2)^n));
  f = [f;F]; % przechowywanie kolejnych wyrazow w wektorze
  fprintf(file, "F %i = %i \n", n, F); %formatowanie wyniku w pliku
  n+=1;
end

fclose(file); %zamkniecie pliku

plot(x, f);
xlabel('n');
ylabel('F(n)');
title('Wykres ci¹gu Fibonacciego dla n = 16');

saveas(1, 'wykres_fibonacci.jpg'); %zapisywanie wykresu do pliku jpg