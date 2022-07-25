% Considere que fvalores tem o valor de f valores nos 4 pontos 
% necessários. Ou seja, fvalores = [fi-2 fi-1 fi fi+1] 
function yProx = passoAdamsMoulton4(yi, h, fvalores)
    yProx = yi + h*(9*fvalores(4)+19*fvalores(3)-5*fvalores(2)+fvalores(1))/24;
end