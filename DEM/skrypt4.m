%%%%%%%%%%%%  Zadanie 4  %%%%%%%%%%%%%%%

f_gr = 1111; % podana przez prowadzacego częstotliwość graniczna

f = f_gr/64; % z wykresu magnitude : -20 dB

%fg = 1/(2*pi*R*C)
RC = 1/(2*pi*f);

G = tf([1], [RC, 1]);

figure;
hold on;
bode(G,f,'go');
bode(G,f_gr,'ro');
bode(G,{1e1,1e4});
legend('f znaleziona','f graniczna');
title(['Diagram Bodego dla RC = ' num2str(RC)]);
hold off;

