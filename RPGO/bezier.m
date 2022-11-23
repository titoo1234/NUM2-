function b = bezier(B,t)
% Opis:
%  bezier vrne tocke na Bezierjevi krivulji pri danih parametrih
%
% Definicija:
%  b = bezier(B,t)
%
% Vhodna podatka:
%  B    matrika velikosti n+1 x d, ki predstavlja kontrolne tocke
%       Bezierjeve krivulje stopnje n v d-dimenzionalnem prostoru,
%  t    seznam parametrov dolzine k, pri katerih racunamo vrednost
%       Bezierjeve krivulje
%
% Izhodni podatek:
%  b    matrika velikosti k x d, kjer i-ta vrstica predstavlja tocko na
%       Bezierjevi krivulji pri parametru iz t na i-tem mestu

    [a,d] = size(B);
    b = zeros(max(size(t)),d);
    for i = 1:d
        for j = 1:length(t)
           D = decasteljau(B(:,i), t(j));
           [x,y] = size(D);
           b(j,i) = D(1,y);
        end
    end
end