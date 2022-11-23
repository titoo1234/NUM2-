function db = bezierder2(B,r,t)
% Opis:
% bezierder vrne točke na krivulji, ki predstavlja odvod dane
% Bezierjeve krivulje
%
% Definicija:
% db = bezierder(B,r,t)
%
% Vhodni podatki:function db = bezierder(B,r,t)
% Opis:
% bezierder vrne točke na krivulji, ki predstavlja odvod dane
% Bezierjeve krivulje
%
% Definicija:
% db = bezierder(B,r,t)
%
% Vhodni podatki:
% B matrika kontrolnih točk Bezierjeve krivulje, v kateri vsaka
% vrstica predstavlja eno kontrolno točko,
% r stopnja odvoda, ki ga računamo,
% t seznam parameterov, pri katerih računamo odvod
%
% Izhodni podatek:
% db matrika, v kateri vsaka vrstica predstavlja točko r-tega
% odvoda pri istoležnem parametru iz seznama t
[n,m] = size(B);
[a,k] = size(t);

db = zeros(k,m);

for i = 1:n-r 
 db = db + factorial(n)/factorial(n-r) * deljenaDifTocke(B,r,i) .*bernstein(n-r,i-1,t)';
end
% db = db + factorial(n)/factorial(n-r) * deljenaDifTocke(B,r,i) .*bernstein(n-r,i-1,t)';
end

end
