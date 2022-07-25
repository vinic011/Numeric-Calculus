function [a,b,r,R] = RegressaoLinear(x,y)
 m = length(x);
 
 A(1,1) = m;
 A(1,2) = sum(x);
 A(2,1) = sum(x);
 A(2,2) = sum(x.^2);
 
 z(1,1) = sum(y);
 z(2,1) = sum(y.*x);
 
 c = A\z;
 a = c(1);
 b = c(2);
 
 f_estimada = @(x)(a+b*x);
 R = sum((f_estimada(x)-y).^2);
 y_ = sum(y)/m;
 RM = sum((y_- y).^2);
 r = (abs((RM-R)/RM))^(1/2);
 
%  figure;
%  hold on;
%  plot(x,y,'*');
%  fplot(f_estimada,[x(1),x(m)]);