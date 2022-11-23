B = [-2/3 -4/5; 1/3 1/5; 0 0; -1/3 1/5; 2/3 -4/5];
t = linspace(0,1,9);
[db,db1] = bezierder(B,2,t);
% test = decasteljau(B(:,1),1);
% [n,m] = size(B);
% [a,k] = size(t);
% 
% matrikaDx = decasteljau(B(:,1),t(1))
% matrikaDy = decasteljau(B(:,2),t(1))
% r = 1
% db = factorial(n-1) /(factorial(n-r-1)) * deljenaDifTocke([matrikaDx(n-r,1:n-r),matrikaDy(n-r,1:n-r)],r,1)
t = (0.46:0.01:0.54)';
[db,db1] = bezierder(B,1,t');
tab = table();
tab{:,'t'} = t;
tab{:,'x'} = db(:,1);
tab{:,'y'} = db(:,2);


% t = linspace(0,1);
% [d1b,d1B] = bezierder(B,1,t);
% [d2b,d2B] = bezierder(B,2,t);
% plotbezier(B,t);
% plotbezier(d1B,t);
% plotbezier(d2B,t);


   


