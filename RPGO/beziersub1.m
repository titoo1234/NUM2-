function BS = beziersub1(B,t,k)
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
if k == 1 
BS = beziersub(B,t);
else    
    p = beziersub(B,t);
    BS{1} = beziersub1(p{1},t,k-1)
    BS{2} = beziersub1(p{2},t,k-1)

end

end