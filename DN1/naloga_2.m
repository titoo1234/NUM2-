x = linspace(0,1,11);
f = @(x) sin(2*pi*x);

m = 4;
X = linspace(0,1,m+1);
Y = f(X);
zx = linzlepek(X,Y,x)'

m = 5;
X = linspace(0,1,m+1);
Y = f(X);
zx = linzlepek(X,Y,x)'

m = 15;
X = linspace(0,1,m+1);
Y = f(X);
zx = linzlepek(X,Y,x)'

xx = linspace(0,1,10^5 + 1);

m = 100;
X = linspace(0,1,m+1);
Y = f(X);
razlika = max(f(xx) - linzlepek(X, Y, xx))

m = 1000;
X = linspace(0,1,m+1);
Y = f(X);
razlika = max(f(xx) - linzlepek(X, Y, xx))

m = 2000;
X = linspace(0,1,m+1);
Y = f(X);
razlika = max(f(xx) - linzlepek(X, Y, xx))

% KUBIČNI ZLEPEK
% Vrednosti kubičnega zlepka v 11 točkah iz [0,1] za različne m

x = linspace(0,1,11);
f = @(x) sin(2*pi*x);
df = @(x) 2*pi*cos(2*pi*x);

% 1.) 
m = 4;
X = linspace(0,1,m+1);
zx = kubzlepek(X,f(X),df(X),x)'

% 2.) 
m = 5;
X = linspace(0,1,m+1);
zx = kubzlepek(X,f(X),df(X),x)'

% 3.) 
m = 15;
X = linspace(0,1,m+1);
zx = kubzlepek(X,f(X),df(X),x)'



xx = linspace(0,1,10^5 + 1);

m = 10;
X = linspace(0,1,m+1);
Y = f(X);

razlika = max(f(xx) - kubzlepek(X, Y, df(X), xx))

m = 20;
X = linspace(0,1,m+1);
Y = f(X);
razlika = max(f(xx) - kubzlepek(X, Y, df(X), xx))

m = 50;
X = linspace(0,1,m+1);
Y = f(X);
razlika = max(f(xx) - kubzlepek(X, Y, df(X), xx))