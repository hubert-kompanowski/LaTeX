Gd = tf([1],[4 1]);
Gg = tf([0.4 0], [0.4 1]);
Gp = tf([1 0],[1 2 1]);
G2 = tf([1],[2 0.1 1]);

% Charakterystyki Filtr�w

figure;
bode(GD);
title('Filtr Dolnoprzepustowy ');

figure;
bode(GG);
title('Filtr Górnoprzepustowy');

figure;
bode(GP);
title('Filtr Pasmoprzepustowy');

figure;
bode(G2);
title('Filtr drugiego rzędu'); 

%%{
U = [1];
D = [4 1];
%}

%{
U = [0.4 0];
D = [0.4 1];
%}

%{
U = [1 0];
D = [1 2 1];
%}

%{
U = [1];
D = [2 0.1 1];
%}

figure;
A = 2; f = 0.001; p = 1;
sim('zad3');
plot(simout);
title('a)'); 

figure;
A = 3; f = 1; p = 5;
sim('zad3');
plot(simout);
title('b)'); 


figure;
A = 1; f = 30; p = 2;
sim('zad3');
plot(simout);
title('c)'); 


figure;
A = 2; f = 0.01; p = 1;
sim('zad3');
plot(simout);
title('d)'); 


figure;
A = 4; f = 5; p = 0;
sim('zad3');
plot(simout);
title('e)'); 

