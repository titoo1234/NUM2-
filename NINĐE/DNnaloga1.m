f = @(x) sin(1./(x+0.01));

[r1,m1] = adaptiveSimpson(f,0,1,inf);
tocnaVrednost = integral(f,0,1);
rez1 = abs(tocnaVrednost-r1)

[r2,m2] = adaptiveSimpson(f,0,1,10^(-3))



