function Bf = bernpoly(f,n,x)
% bernpoly vrne vrednosti Bernsteinovega polinoma stopnje n za funkcijo f v
% tockah x.
%
% Bf = bernpoly(f,n,x)
%
% Vhod:
%  f    funkcija: @(x) f(x),
%  n    stopnja Bernsteinovega polinoma,
%  x    seznam abscis.
%
% Izhod:
%  Bf   seznam vrednosti Bernsteinovega polinoma stopnje n za funkcijo f v
%       tockah iz seznama x.
    s = length(x);
    Bf = zeros([1, s]);

    for i = 0:n
        Bf = Bf + f(i/n) .* bernstein(n,i,x);
        
    end
    

end