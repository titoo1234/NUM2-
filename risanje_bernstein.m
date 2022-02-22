% naloga 1
x = linspace(0,1,1001);

for i = 0:5
   %plot(x, bernstein(5,i,x))
   hold on
    
end

bernstein(10,5,sqrt(3)/2);


% naloga 2
f = @(x) 1./(3.*x + 1);

plot(x, f(x))
    
for n = 2:10
   plot(x, bernpoly(f,n,x));
   norm(f(x) - bernpoly(f,n,x), 'inf')
   hold on
    
end


