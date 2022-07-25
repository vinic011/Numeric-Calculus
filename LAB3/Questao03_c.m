%Questão 03 - (c)
A = hilb(8)
b = [1; 2; 3; 4; 5; 6; 7; 8];
resultado = Condicionamento_Refinamento(A,b)
valorCond = Condicionamento_Norma(A)

x = GP(A,b)
b1 = [1; 2; 3; 4; 5; 6; 7; 8.3];
x1 = GP(A,b1)
b2 = [1; 2; 3; 4; 5; 6.1; 7; 8];
x2 = GP(A,b2)