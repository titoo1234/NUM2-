B = [-5/3 0; -16/3 4/3; -2 16/3; 0 18/5; 8/3 2];

%kontrolne točke ci Bézierjeve krivulje stopnje n + 1.
Be = bezierelv(B);

%vsota abscic
vsota_abscis = sum(Be(:,1))
max(norm(Be),2)
norm(Be)

%za vsako vrstico izračuna normo
result = arrayfun(@(ROWIDX) norm(Be(ROWIDX,:)), (1:size(Be,1)).');


% Chaikinov postopek
P = [4 2; 1 4; -2 4; -4 -1;-2 -3 ;2 -2];
Pk = chaikin(P,2)
r2 = norm(Pk(1,:)-Pk(18,:),2)
