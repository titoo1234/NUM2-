function [db,db1] = bezierder(B,r,t)
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
db1 = zeros(n-r,m);
db = zeros(k,m);
for i = 1:k
    matrikaDx = decasteljau(B(:,1),t(i));
    matrikaDy = decasteljau(B(:,2),t(i));
    db(i,:) = factorial(n-1) /(factorial(n-r-1)) * deljenaDifTocke([matrikaDx(1:r+1,n-r),matrikaDy(1:r+1,n-r)],r,1);
end
% for j = 1: n-r
%     db1(j,:)= (n-1) * (B(j+1,:)-B(j,:))
% end
db1 = KontrolneOdvod(B,r);


% deljenaDifTocke([matrikaDx(1:n-r-1,n-r-1),matrikaDy(1:n-r-1,n-r-1)],r,2)

end
