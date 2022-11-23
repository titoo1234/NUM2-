p = [4 7 2 8 9 1 4];
b = power2bernstein(p)
bernstein2power(b)


n = 5;
x = linspace(0,1);
clf
hold on
for i = 0:n
b = zeros(1,n+1);
b(i+1) = 1;
plot(x,polyval(flip(bernstein2power(b)),x));
end
hold off