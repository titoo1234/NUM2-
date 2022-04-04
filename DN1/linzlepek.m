function zx = linzlepek(X,Y,x)
% Opis:
%  Funkcija linzlepek vrne vrednosti zveznega linearnega zlepka, ki
%  interpolira dane vrednosti v sticnih tockah definicijskega intervala.
%
% Definicija:
%  zx = linzlepek(X,Y,x)
%
% Vhod:
%  X    vrstica, ki predstavlja sticne tocke definicijskega intervala
%       zlepka,
%  Y    interpolacijske vrednosti,
%  x    vrstica tock na definicijskem intervalu.
%
% Izhod:
%  zx   vrstica vrednosti linearnega zlepka v tockah iz x.

[d, v] = size(X);
zx = zeros(size(x));
j = 1;
for i=1:v-1
    k = (Y(i+1)-Y(i))/(X(i+1)-X(i));
    f = @(x) Y(i)+k*(x-X(i));
    while x(j) < X(i+1)
        zx(j) = f(x(j));
        j = j+1;
    end 
end