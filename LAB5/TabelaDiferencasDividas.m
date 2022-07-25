function T = TabelaDiferencasDividas(x,y)
    n = length(x);
    T = zeros(n);
    for i = 1:n
        T(i,1) = y(i);
    end
    
    for j = 2:n
       for i = 1:n+1-j
          T(i,j) = (T(i+1,j-1)-T(i,j-1))/(x(i+j-1)-x(i));
          if abs(T(i,j)) < 10^(-10)
              T(i,j) = 0;
          end
       end
    end
end