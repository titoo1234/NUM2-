% Tit Arnšek DN1 -1. podnaloga
f = @(x)log(x);

m = [1 1 1; -1 1 3/2; 1 1 2];

b = [f(1); f(3/2); f(2)];

x = linsolve(m,b);

a = x(3);
b = x(2);


% residual:
r = @(x)f(x)-a*x - b;

%xx = linspace(1,2,1000);
%plot(xx, r(xx))

% plot(xx,r(xx))
% result = find(r(xx)==t);
%m = max(r(xx));
%index = find(r(xx)==m);
%y1 pri katerem je dosežena neskončna norma:
%y1 = xx(index)
%druga možnost
% d = @(z) 1./z - x(3)
% plot(xx,d(xx))
% nicla = fzero(d,1.5)

% ker iscemo maximum:
g = @(x)-r(x);
max = fminbnd(g, 1,2);

m2 = [1 1 1; -1 1 max; 1 1 2];
b2 = [f(1); f(max); f(2)];
x2 = linsolve(m2,b2);
a2 = x2(3);
bb2 = x2(2);
r2 = @(x)f(x)-a2*x - bb2
g2 = @(x)-r2(x);
max = fminbnd(g2, 1,2);

max_vr = r2(max)


