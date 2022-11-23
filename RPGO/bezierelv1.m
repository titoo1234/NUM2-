function Be = bezierelv1(B)
% Opis:
%  bezierelv izvede visanje stopnje dane Bezierjeve krivulje
%
% Definicija:
%  Be = bezierelv(B)
[n,d] = size(B);
Be = zeros(n+1,d);
Be(1,:) = B(1,:);
Be(n+1,:) = B(n,:);
for i = 2:n
   Be(i,:) = (i-1)/(n)* B(i-1,:) + (1-((i-1)/(n)))*B(i,:);
end
%
% Vhodni podatek:
%  B    matrika velikosti (n+1) x d, v kateri vsaka vrstica
%       predstavlja d-dimenzionalno kontrolno tocko
%       Bezierjeve krivulje stopnje n,
%
% Izhodni podatek:
%  Be   matrika velikosti (n+2) x d, v kateri vsaka 
%       vrstica predstavlja d-dimenzionalno kontrolno tocko
%       Bezierjeve krvulje stopnje n+1, ki ustreza dani
%       Bezierjevi krivulji

end



