function rez = simpson2d(f,a,b,c,d,m,n)

    x = (b-a)/(m-1);
    y = (d-c)/(n-1);
    tockeX = linspace(a,b,m);
    tockeY = linspace(c,d,n);
    

    faktor = x*y/4;
    rez1 = f(a,c)+f(b,c)+f(a,d) + f(b,d);
    rez2 = 0;
    for i = 2 : (m-1)
     rez2 = rez2 + 2 * f(tockeX(i),c) + 2 * f(tockeX(i),d);
    end

    for j = 2 : (n-1)
     rez2 = rez2 + 2 * f(a,tockeY(j)) + 2 * f(b,tockeY(j));
     for i = 2 : (m-1)
        rez2 = rez2 + 4 * f(tockeX(i),tockeY(j));
     end
    end

    rez = faktor*(rez1 + rez2);



end