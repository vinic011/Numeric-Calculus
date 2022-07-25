function [satisfaz,beta] = CriterioSassenfeld(A)
    n = size(A,1);
    b = zeros(n,1);
    for i = 1 : n
        for j = 1 : n
            if i > j
                b(i) = b(i) + abs(A(i,j))*b(j)/abs(A(i,i));
            end
            if i < j
               b(i) = b(i) + abs(A(i,j))/abs(A(i,i));
            end
        end
    end  
    beta = max(abs(b(1:end)))
    satisfaz = (beta < 1)
end