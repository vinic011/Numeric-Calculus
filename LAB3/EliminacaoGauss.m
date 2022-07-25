function x = EliminacaoGauss(A,b)
n = length(A);
%Escalonamento
for k = 1 : n-1
    for i = k+1 : n
        if(A(k,k) ~= 0)
            m = A(i,k)/A(k,k);
            A(i,k) = 0;
            for j = k+1 : n
                A(i,j) = A(i,j)-m*A(k,j);
                 if abs(A(i, j)) <= 10*eps 
                     A(i, j) = 0; 
                 end
            end
            b(i) = b(i) - m*b(k);
            if abs(b(i)) <= 10*eps 
                b(i) = 0; 
            end
        end
    end
end
A;
b;
x(n)= b(n)/A(n,n);
for k = n-1 :-1 : 1
    s =0;
    for j = k+1 : n
        s = s + A(k,j)*x(j);
    end
    x(k) = (b(k)-s)/A(k,k);
    if abs(x(k)) <= 10*eps 
        x(k) = 0; 
    end
end
x = x';
end


