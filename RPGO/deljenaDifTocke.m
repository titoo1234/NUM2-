function db = deljenaDifTocke(B,r,i)
% B so kontrolne točke, r je stopnja, 
    if r == 0 
        db = B(i,:);
    else
        db = deljenaDifTocke(B,r-1,i+1) - deljenaDifTocke(B,r-1,i);
    end
end