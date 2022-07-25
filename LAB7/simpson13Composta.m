function [I,e] = simpson13Composta(f,a,b,n)
    if rem(n,2) == 1 && n < 2
        fprintf('error');
    else
        h = (b-a)/n;
        I = (f(a)+f(b))/3;
        for i = 1:(n-1)
            if rem(i,2) == 1
                I = I + 4*f(a+i*h)/3;
            else
                I = I + 2*f(a+i*h)/3;
            end
        end
        I = I*h;  
        if n == 2
            x = [a,(3*a+b)/4,(a+b)/2,(a+3*b)/4,b];
        else
            x = a:((b-a)/n):b;
        end
            x = x';
            y = f(x);
            T = TabelaDiferencasDividas(x,y);
            maxDD = max(abs(T(:,5)));
            f4zeta = maxDD*24;
            e = abs((a-b)*(h^4)*f4zeta/180);
    end
end