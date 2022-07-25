function [yProx,zProx] = passoRK42(f, g, h, xi, yi,zi)
    % Define k1, k2, k3, k4 (auxiliares)
    kf1 = f(xi, yi,zi);
    kg1 = g(xi, yi,zi);
    
    kf2 = f(xi + h/2, yi + kf1*h/2,zi+ kg1*h/2);
    kg2 = g(xi + h/2, yi + kf1*h/2,zi+ kg1*h/2);
    
    kf3 = f(xi + h/2, yi + kf2*h/2,zi+ kg2*h/2);
    kg3 = g(xi + h/2, yi + kf2*h/2,zi+ kg2*h/2);
    
    kf4 = f(xi + h, yi + kf3*h,zi+ kg3*h);
    kg4 = g(xi + h, yi + kf3*h,zi+ kg3*h);

    % Calcula o yProx
    yProx = yi + (kf1 + 2*kf2 + 2*kf3 + kf4)*h/6;
    zProx = zi + (kg1 + 2*kg2 + 2*kg3 + kg4)*h/6;
end