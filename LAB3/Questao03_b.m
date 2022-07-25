%Questão 03 - (b)
A1=[71 41;51 30];
b1=[100; 70];
x1 = GP(A1,b1)
resultado1 = Condicionamento_Refinamento(A1,b1)
valorCond1 = Condicionamento_Norma(A1)
A1\b1

A2=[71 41;52 30];
b2=[100; 70];
x2 = GP(A2,b2)
resultado2 = Condicionamento_Refinamento(A2,b2)
valorCond2 = Condicionamento_Norma(A2)
A2\b2

A3=[71 41;52 30];
b3=[100.4; 69.3];
x3 = GP(A3,b3)
resultado3 = Condicionamento_Refinamento(A3,b3)
valorCond3 = Condicionamento_Norma(A3)
A3\b3