function Be = KontrolneOdvod(B,r)
% Vrne kontrolne točke r-tega odvoda bez. kribulje podane s kontrolnimi
% točkammi B
if r == 0
    Be = B;
else
    [n,m] = size(B);
    db1 = zeros(n-1,m);
    for j = 1: n-1
        db1(j,:)= (n-1) * (B(j+1,:)-B(j,:));
        
    end
    Be = KontrolneOdvod(db1,r-1);
end
end