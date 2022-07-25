function yProx = passoRK4(f, h, xi, yi)
    % Define k1, k2, k3, k4 (auxiliares)
    k1 = f(xi, yi);
    k2 = f(xi + h/2, yi + k1*h/2);
    k3 = f(xi + h/2, yi + k2*h/2);
    k4 = f(xi + h, yi + k3*h);

    % Calcula o yProx
    yProx = yi + (k1 + 2*k2 + 2*k3 + k4)*h/6;
end