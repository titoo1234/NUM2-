function [val, maxLevel] = adaptiveSimpson(f,a,b,tol)
% function [val, maxLevel] = adaptiveSimpson(f,a,b,tol)
%
% Rekurzivna adaptivna metoda za \int_a^b f(x) dx, ki temelji na
% Simpsonovem pravilu in Richardsonovi ekstrapolaciji.
% Metoda izracuna priblizek I_1 za integral po Simpsonovem pravilu na
% [a,b]. Nato primerja rezultat z I_2, ki da dobimo s Simpsonovim pravilom
% na dveh enako velikih podintervalih. 
h = b - a;
c = (a + b) / 2;
d = (a + c) / 2;
e = (c+b)/2;
I1 = h/6 * (f(a)+4*f(c)+f(b));
I2 = h/12 * (f(a)+4*f(d)+2*f(c)+4*f(e)+f(b));
razlika = abs(I1-I2);
if razlika < tol 
maxLevel = 1;
    
val = I2 + (I2 - I1)/15;
else
    [val1, maxLevel1] = adaptiveSimpson(f,a,c,tol/2);
    [val2, maxLevel2] = adaptiveSimpson(f,c,b,tol/2);
    val = val1 + val2;
    maxLevel = max(maxLevel1,maxLevel2) + 1;
end
% Ce je |I_1 - I_2| vecja od tol*(b-a), potem na vsakem od podintervalov
% rekurzivno poklicemo metodo in vrnemo priblizek za integral kot vsoto
% obeh prispevkov.
% Ce je razlika |I1 - I2| manjsa oz. enaka kot zahtevana natancnost
% tol*(b-a), le se izboljsamo rezultat tako, da naredimo en korak
% Richardsonove ekstrapolacije.
%
% Vhodni podatki
% funkcija f,
% interval [a, b]
% natancnost tol. 
%
% Izhodni podatki
% priblizek za integral
% najvecja dosezena globina rekurzije