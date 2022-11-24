B = [0 0; 2 3; 4 2; 5 -1];
% BS = beziersub(B,0.4);
BS2 = beziersub1(B,0.5,3);
[BS2{1}{1} BS2{1}{2}; BS2{2}{1} BS2{2}{2}]
list1 = Cell2Array(BS2);
a = list1(1)
celldisp(list1(1))

t = linspace(0,1);
subt = 0.5;
for k = 1:3
    subplot(1,3,k);
    plotbezier(B,t);
    BS = beziersub1(B,subt,k);
    BS = Cell2Array(BS)
for d = 1:length(BS)
    a = BS(d)
    plotbezier(a{1},t);
end
end
