function Pk = chaikin(P,k)
% Opis:
%  chaikin izvede Chaikinov postopek
%
% Definicija:
%  Pk = chaikin(P,k)
%
% Vhodna podatka:
%  P    matrika velikosti (m+2) x d, v kateri vsaka vrstica
%       predstavlja d-dimenzionalno tocko
%  k    število korakov postopka
%
% Izhodni podatek:
%  Pk   matrika velikosti (2^k*m+2) x d, katere vrstice predstavljajo 
%       točke, dobljene po k korakih Chaikonovega postopka
Pk = P;
[m1,d] = size(Pk)
for i = 1:k
    [m,d] = size(Pk); %m je m+2
    pkk = zeros(2^i * (m1-2) +1 ,d)
    for j = 0: 2^(i-1) * (m1-2)
        j
        pkk(2*j +1 ,:) = 3/4*Pk(j+1,:) + 1/4*Pk(j+2,:);
        pkk(2*(j) + 2,:) = 1/4*Pk(j+1,:) + 3/4*Pk(j+2,:);
%         pkk(2*j,:) = 3/4*Pk(j,:) + 1/4*Pk(j+1,:);
    
    
    end

    Pk = pkk
    
end

end
