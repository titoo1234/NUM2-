f = @(x,y) sin(x-1/4).^2 .* cos(y.*2 - 1/3)

n = 3;
m = 3;
a = 0;
b = 1;
c = 0;
d = 1;

tocna =  integral2(f,0,1,0,1);

% x = linspace(0,1,20);
% y = x';
% z = f(x,y)
% 
% surf(x,y,z)

r3 = trapezno2d(f,0,1,0,1,4,4)
h1 = (1-0)/3;
r30 = trapezno2d(f,0,1,0,1,31,31)
h2 = 1/30

razlika1 = abs(r3 - tocna)
razlika2 = abs(r30 - tocna)
razlika1/razlika2 / 10



v1 = ones(1,11)
dol = length(v1)
for i = 2 : 2: (dol/2) +1

    v1(i) = 2
    v1(i+1) = 4

    v1(dol-i +1) = 2
    v1(dol-i) = 4
end