function yProx = passoRK3(f, h, xi, yi)
    % Define k1, k2 e k3 (auxiliares)
    k1 = f(xi, yi);
    k2 = f(xi + h/2, yi + k1*h/2);
    k3 = f(xi + h, yi - k1*h + 2*k2*h);

    % Calcula o yProx
    yProx = yi + (k1 + 4*k2 + k3)*h/6;
end