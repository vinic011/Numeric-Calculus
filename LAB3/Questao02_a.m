%Questão 02 - (a)
A = [ 2 2 1 1; 1 -1 2 -1; 3 2 -3 -2; 4 3 2 10];
b = [7; 1; 4; 13];
[L, U, P] = LUP(A)
x = SolucaoLU(L, U, P, b)
x_g = A\b
[L_g, U_g, P_g] = lu(A)

