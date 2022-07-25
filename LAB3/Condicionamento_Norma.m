function valorCond = Condicionamento_Norma(A)
valorCond = calcularNorma(A)*calcularNorma(inv(A));
end
