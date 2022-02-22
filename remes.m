f = @(x) log(x);
M = [1 1 1; -1 1 3/2;1 1 2]
b = [f(1); f(3/2); f(2)]
x = linsolve(M,b)
% y = M\b
r = @(z) log(z) - x(3).*z - x(2)
xx = linspace(1,2,1001)
plot(xx,r(xx))
% r(1)
% r(2)
% r(3/2)
d = @(z) 1./z - x(3)
plot(xx,d(xx))
nicla = fzero(d,1.5)

E2 = [1; nicla;2]
b2 = f(E2)
M2 = [1 1 1; -1 1 nicla;1 1 2]
x2 = linsolve(M,b)
r2 = @(z) log(z) - x2(3).*z - x2(2)
plot(xx,r2(xx))
d = @(z) 1./z - x2(3)
nicla = fzero(d,1.5)
