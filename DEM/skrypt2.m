G_od_s_1 = tf([1],[1 1 2]); % układ pierwszy
G_od_s_2 = tf([1],[1 -0.1 1]); % układ drugi
nyquist(G_od_s_1, G_od_s_2) % sprawdzanie stabliności
% obydwa wykresy nie obejmuja pkt (-1,0) więc będą stabilne