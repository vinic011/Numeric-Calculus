function [I, qtdeRec, qtdeDiv] = quadAdaptativa(f,a,b,opcao,epsilon)
    [I, qtdeRec, qtdeDiv] = aux(f,a,b,opcao,epsilon,a,b);
    function [I, qtdeRec, qtdeDiv] = aux(f,a,b,opcao,epsilon,ao,bo)
    h = b-a;
    m = (a+b)/2;
    
    if opcao == 1
        P = h*(f(a)+f(b))/2;
        Q = (h/2)*(f(a)+f(m))/2+(h/2)*(f(b)+f(m))/2;
        p = 2;
        f_qtdeDiv = 2;
        
    elseif opcao == 2
        P = (h/2)*(f(a)+4*f(a+h/2)+f(b))/3;
        Q = (h/4)*(f(a)+4*f(a+h/4)+f(m))/3+(h/4)*(f(m)+4*f(m+h/4)+f(b))/3;
        p = 4;
        f_qtdeDiv = 4;
        
    elseif opcao == 3
        P = 3*(h/3)*(f(a)+3*f(a+h/3)+3*f(a+2*h/3)+f(b))/8;
        Q = 3*(h/6)*(f(a)+3*f(a+h/6)+3*f(a+2*h/6)+f(m))/8+3*(h/6)*(f(m)+3*f(m+h/6)+3*f(m+2*h/6)+f(b))/8;
        p = 4;
        f_qtdeDiv = 6;
        
    else
        P = 2*(h/4)*(7*f(a)+32*f(a+h/4)+12*f(a+2*h/4)+32*f(a+3*h/4)+7*f(b))/45;
        Q = 2*(h/8)*(7*f(a)+32*f(a+h/8)+12*f(a+2*h/8)+32*f(a+3*h/8)+7*f(m))/45+2*(h/8)*(7*f(m)+32*f(m+h/8)+12*f(m+2*h/8)+32*f(m+3*h/8)+7*f(b))/45;
        p = 6;
        f_qtdeDiv = 8;
        
    end
    
    
    if abs(P-Q) > epsilon*((2^p)-1)*h/(bo-ao)
        [I1, qtdeRec1, qtdeDiv1] = aux(f,a,m,opcao,epsilon,ao,bo);
        [I2, qtdeRec2, qtdeDiv2] = aux(f,m,b,opcao,epsilon,ao,bo);
        qtdeDiv=qtdeDiv1+qtdeDiv2;
        qtdeRec = qtdeRec1+qtdeRec2+2;
        I = (I1+I2);
        
    else 
        qtdeDiv = f_qtdeDiv;
        qtdeRec = 0;
        I = Q;  
    end
    end
end