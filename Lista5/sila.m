function [F_12, F_21] = sila (r1, r2, q1, q2)
  % Fizyka dla ISSP 2, Lista 5, Katarzyna Woüna 289847
  % Funkcja zwracajπca wektor si≥y Coulomba
  
  r_12 = [r1(1)-r2(1), r1(2)-r2(2), r1(3)-r2(3)];
  r_21 = [r2(2)-r1(1), r2(2)-r1(2), r2(3)-r1(3)];
  
  r_12_len = sqrt((r_12(1)^2)+(r_12(2)^2)+(r_12(3)^2));
  r_21_len = sqrt((r_21(1)^2)+(r_21(2)^2)+(r_21(3)^2));
  
  k = 8.9875*(10^9);
  
  F_12 = [(k*(q1*q2)/(r_12_len)^3)*r_12(1), (k*(q1*q2)/(r_12_len)^3)*r_12(2), (k*(q1*q2)/(r_12_len)^3)*r_12(3)]
  F_21 = [(k*(q1*q2)/(r_21_len)^3)*r_21(1), (k*(q1*q2)/(r_21_len)^3)*r_21(2), (k*(q1*q2)/(r_21_len)^3)*r_21(3)]
  
endfunction
