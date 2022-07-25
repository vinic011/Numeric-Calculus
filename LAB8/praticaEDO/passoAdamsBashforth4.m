 % Considere que fvalores tem o valor de f nos 4 pontos anteriores 
 % necessários. Ou seja, fvalores = [fi-3 fi-2 fi-1 fi]
 function yProx = passoAdamsBashforth4(yi, h, fvalores)
    yProx = yi + h*(55*fvalores(4)-59*fvalores(3)+37*fvalores(2)-9*fvalores(1))/24;
 end

 