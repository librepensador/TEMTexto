beginfig(1);

u=1cm;
pair p[],x,y,o,oo;
path q[];

x=(2u,0);
y=(0,2u);
o=(0,0);
oo=(6u,0);
%--- los ejes ---% 


drawarrow (-2u,0)--x withpen pencircle scaled 1;
label.lrt(btex x etex,x);

drawarrow (0,-0.25u)--y withpen pencircle scaled 1;
label.urt(btex Propiedad local etex,y);

label.lrt(btex $x_0$ etex,o);




drawarrow (-2u,0)+oo--x+oo withpen pencircle scaled 1;
label.lrt(btex x etex,x+oo);

drawarrow (0,-0.25u)+oo--y+oo withpen pencircle scaled 1;
label.urt(btex Propiedad local etex,y+oo);

label.lrt(btex $x_0$ etex,o+oo);



%--- la curva ---% 
d=0.8u;
p0=(-2u,0.5u);
p1=(-d,0.5u);
p2=(d,1.5u);
p3=(2u,1.5u);
 
q1=p0..{dir(0)}p1..p2{dir(0)}..p3;
draw q1;

p5=(-2u,u);
p6=(2u,u);

label(btex Medio 1 etex,p5);
label(btex Medio 2 etex,p6);



draw p0+oo--(0,0.5u)+oo--(0,1.5u)+oo--p3+oo;
label.rt(btex Medio 1 etex,p5+oo);
label.lft(btex Medio 2 etex,p6+oo);


%--- Delta de h ---%

p10=(-d,-0.4u);
p11=(d,-0.4u);
draw p10--p11;
draw p10+(0,0.1u)--p10-(0,0.1u);
draw p11+(0,0.1u)--p11-(0,0.1u);
label.bot(btex $\Delta h$ etex,1/2[p10,p11]);

draw p10+(0,0.1u)--p10+(0,2.2u) dashed evenly;
draw p11+(0,0.1u)--p11+(0,2.2u) dashed evenly;


label.bot(btex Idealizaci\'on etex,1/2[p10,p11]+oo);




endfig;
end;