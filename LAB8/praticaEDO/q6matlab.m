% f=@(x)74.4523*exp(0.1*x)-53.4523*exp(-0.1*x)+20;
% f(8)
function lab8_ex6()
solinit = bvpinit([0,10],[0,0]);
% Nosso intervalo é de 0 a 10
% Pode usar assim também para gerar os pontos de interesse:
solinit = bvpinit([0 2 4 6 8 10],[0,0]);
sol = bvp4c(@deriv,@bcs,solinit);
[sol.x; sol.y(1,:);] %Para ver os pontos x e y encontrados

plot(sol.x,sol.y(1,:),'b-x'); %Para plotar em azul marcando pon-
%tos com ‘x’ e ligando esses pontos.

function dYdx = deriv(x,Y)
% Nosso problema: T''+0.01*(20-T)=0 onde T é função de x
% T será chamado de Y
% Y''+0.01*(20-Y)=0
% Quebrando em um sistema de equações de primeira ordem (sendo
% y'= z):
dYdx(1) = Y(2);
dYdx(2) = -0.01*(20-Y(1));
% Aqui Y(1) é Y e Y(2) é Y’’
% boundary conditions
function res = bcs(ya,yb)
res = [ ya(1)-40
yb(1)-200];
