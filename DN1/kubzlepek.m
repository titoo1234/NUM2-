function zx = kubzlepek(X,Y,dY,x)
% Opis:
%  Funkcija kubzlepek vrne vrednosti zvezno odvedljivega
%  kubicnega zlepka, ki interpolira dane vrednosti in odvode v delilnih tockah
%  definicijskega intervala.
%
% Definicija:
%  zx = kubzlepek(X,Y,dY,x)
%
% Vhod:
%  X    vrstica, ki predstavlja delilne tocke definicijskega intervala
%       zlepka,
%  Y    interpolacijske vrednosti,
%  dY   interpolacijske vrednosti odvoda,
%  x    vrstica tock na definicijskem intervalu.
%
% Izhod:
%  zx   vrstica vrednosti kubicnega zlepka v tockah iz x.
[d, v] = size(X);
zx = zeros(size(x));
j = 1;
% matrika_koef = zeros(v-1, 4);
% for i=1:v-1
%     % za vsak i izracunamo koeficiente kubicnega polinoma
%     % a(x-xj)^3+b(x-xj)^2+c(x-xj)+d
%     k = (Y(i+1)-Y(i))/(X(i+1)-X(i));
%     d = Y(i);
%     c = dY(i);
%     b = (k-dY(i))/(X(i+1)-X(i));
%     a = (dY(i+1)+dY(i)- 2*k)/(X(i+1)-X(i))^2;
%     
%     matrika_koef(i,:) = [a b c d];
% end

for i=1:v-1    
    k = (Y(i+1)-Y(i))/(X(i+1)-X(i));
    d = Y(i);
    c = dY(i);
    b = (k-dY(i))/(X(i+1)-X(i));
    a = (dY(i+1)+dY(i)- 2*k)/(X(i+1)-X(i))^2;
    f = @(x) a*(x-X(i))^2*(x-X(i+1)) + b*(x-X(i))^2 + c*(x-X(i)) + d;
    while x(j) < X(i+1)
        zx(j) = f(x(j));
        j = j+1;
    end 
end

end