function BS = beziersub(B,t)
% Opis:
% beziersub izvede subdivizijo Bezierjeve krivulje
%
% Definicija:
% BS = beziersub(B,t)
%
% Vhodni podatki:
% B matrika kontrolnih točk Bezierjeve krivulje, v kateri
% vsaka vrstica predstavlja eno kontrolno točko,
% t parameter subdivizije Bezierjeve krivulje
%
% Izhodni podatek:
% BS celica, ki vsebuje kontrolne točke dveh krivulj, ki jih
% dobimo s subdivizijo prvotne Bezierjeve krivulje
DecX = decasteljau(B(:,1),t);
DecY = decasteljau(B(:,2),t);
[n,m] = size(B);
L = zeros(n,m);
D = zeros(n,m);
for i = 1 : n
    L(i,1) = DecX(1,i);
    L(i,2) = DecY(1,i);
    D(i,1) = DecX(i,n-i+1);
    D(i,2) = DecY(i,n-i+1);
end
BS = cell(1,2);
BS{1} = L;
BS{2} = D;

end