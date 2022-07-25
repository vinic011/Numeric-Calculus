x = [ 1; 2; 3; 4; 5; 6];
y = [ 47; 65; 92; 132; 190; 275];
 m = length(x);

% [a1,b1,r1,R1] = RegressaoLinear(x,y);
% f_estimada = @(x)(a1+b1*x);
  figure;
  hold on;
  plot(x,y,'*');
%  fplot(f_estimada,[x(1),x(m)]);
 
[a2,b2,r2,R2] = RegressaoLinear(log(x),log(y));
f_estimada = @(x)(exp(a2)*x.^b2);
hold on;
%plot(x,y,'*');
fplot(f_estimada,[x(1),x(m)],'y');
x = [ 1; 2; 3; 4; 5; 6];
y = [ 47; 65; 92; 132; 190; 275];
[a3,b3,r3,R3] = RegressaoLinear(x,log(y));
f_estimada = @(x)(exp(a3)*(exp(b3).^x))
f_estimada(7)
hold on;
%plot(x,y,'*');
fplot(f_estimada,[x(1),x(m)],'r');
title('q4')
xlabel('x');
ylabel('y');
legend('Pontos','Reg potencias ','Reg Exponencial')
