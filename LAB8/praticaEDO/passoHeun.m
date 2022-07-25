function yProx = passoHeun(f, h, xi, yi)
    yProx = yi + h*(f(xi, yi) + f(xi + h, yi + h*f(xi, yi)))/2;
    
    %Ou assim:
    % k1 = f(xi, yi);
    % k2 = f(xi + h, yi + h*k1);
    % yProx = yi + h*(k1 + k2)/2;
        
end