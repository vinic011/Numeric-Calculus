f=@(x,y)cos(x)+1;

h=0.2;
xi=0;
yi=-1;

yProx = passoHeun(f, h, xi, yi)

for i=1:10
    xi=xi+h;
    yi=yProx;
    yProx = passoEuler(f, h, xi, yi)
end;