function A = Cell2Array(BS)

if not(isa(BS,'cell'))
    
    
    A{1} = BS;
else
    A = [Cell2Array(BS{1}) Cell2Array(BS{2})];
end
end