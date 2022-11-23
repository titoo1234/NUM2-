% kontrolne točke Bezierjeve krivulje
% B = [0 0; 1 2; 3 3; 4 -1; 0 2];
% decasteljau(B(:,1),0)
% decasteljau(B(:,2),1)
% decasteljau(B(:,2),0.5)


% B = [0 0; 1 2; 3 3; 4 -1; 0 2];
% t = linspace(0,1,11);
% bezier(B,t)


% B = [0 0; 1 2; 3 3; 4 -1; 0 2];
% t = linspace(0,1);
% plotbezier(B,t);


% zrcaljenje krivulje čez y os
% Bz = B*[-1 0; 0 1]
% plotbezier(Bz,t);


B = [-2/3 -4/5; 1/3 1/5; 0 0; -1/3 1/5; 2/3 -4/5];
t = linspace(0,1,9);


[db,db1] = bezierder(B,4,t)


% t = (0.46:0.01:0.54)';
% d1b = bezierder(B,1,t);
% tab = table();
% tab{:,'t'} = t;
% tab{:,'x'} = d1b(:,1);
% tab{:,'y'} = d1b(:,2);
% 
% 
% t = linspace(0,1);
% [d1b,d1B] = bezierder(B,1,t);
% [d2b,d2B] = bezierder(B,2,t);
% plotbezier(B,t);
% plotbezier(d1B,t);
% plotbezier(d2B,t);



% 4. naloga


n = 5;
fi = pi/n;

B1 = bezierarc(fi,1)
B2 = bezierarc(fi,2)
B3 = bezierarc(fi,3)



% izračun točk na Bezierjevih krivuljah
t = linspace(0,1,1001);
b1 = bezier(B1,t);
b2 = bezier(B2,t);
b3 = bezier(B3,t);



