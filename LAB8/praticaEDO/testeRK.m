f=@(x,y)cos(x)+1;

h=0.2;
xi=0;
yi=-1;

yProx = passoRK4(f, h, xi, yi)

for i=1:10
    xi=xi+h;
    yi=yProx;
    yProx = passoRK3(f, h, xi, yi)
end;