beginfig(2);

u=0.6cm;

z0=(0,0);

for i=1 upto 3:
z[i]=i*u*dir(300);
endfor

for i=4 upto 6:
z[i]=(i-3)*u*dir(180)+z3;
endfor

for i=7 upto 9:
z[i]=(i-6)*u*dir(60)+z6;
endfor

label("i",z0);
label("j",z3);
label("k",z6);

drawarrow z1--z2;
drawarrow z4--z5;
drawarrow z7--z8;

endfig;
end;