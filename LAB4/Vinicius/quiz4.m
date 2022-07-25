A = [5 1 1; 3 4 1; 3 3 6]
b = [5; 6; 0]
A\b
CriterioLinhas(A)
CriterioSassenfeld(A)
n = size(A,1);
x0 = zeros(n,1);
[y,y0] = GaussJacobi(A, b, x0, 10^(-3),100);
[x,x0] = GaussSeidel(A,b,x0,10^(-3),100);

