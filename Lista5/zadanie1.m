function [F_12, F_21] = zadanie1 (r1, r2, q1, q2)
  % Fizyka dla ISSP 2, Lista 5, Katarzyna WoŸna 289847
  % Funkcja zwracaj¹ca wektor si³y Coulomba
  
  r_12 = [r1(1)-r2(1), r1(2)-r2(2), r1(3)-r2(3)];
  r_21 = [r2(1)-r1(1), r2(2)-r1(2), r2(3)-r1(3)];
  
  r_12_len = [abs(r_12(1)), abs(r_12(2)), abs(r_12(3))];
  r_21_len = [abs(r_21(1)), abs(r_21(2)), abs(r_21(3))];
  
  k = 8.9875*(10^9);
  
  F_12 = [(k*(q1*q2)/((r_12_len(1))^3))*r_12(1), (k*(q1*q2)/((r_12_len(2))^3))*r_12(2), (k*(q1*q2)/((r_12_len(3))^3))*r_12(3)]
  F_21 = [(k*(q1*q2)/((r_21_len(1))^3))*r_21(1), (k*(q1*q2)/((r_21_len(2))^3))*r_21(2), (k*(q1*q2)/((r_21_len(3))^3))*r_21(3)]
  
  % rysowanie wykresów
  plot3(r1(1), r1(2), r1(3), 'o');
  hold on;
  plot3(r2(1), r2(2), r2(3), '*');
  quiver3(r1(1), r1(2), r1(3), F_12(1), F_12(2), F_12(3));
  quiver3(r2(1), r2(2), r2(3), F_21(1), F_21(2), F_21(3));
  txt1 = ['q1 = ', num2str(q1)];
  text(r1(1) + 0.05, r1(2) + 0.05, r1(3) + 0.05, txt1)
  txt2 = ['q2 = ', num2str(q2)];
  text(r2(1) + 0.05, r2(2) + 0.05, r2(3) + 0.05, txt2)
  hold off;
  
endfunction
