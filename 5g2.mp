beginfig(2);


verbatimtex
%&latex
\documentclass{amsart}
\usepackage[spanish]{babel}
\begin{document}
etex



u=1cm; %unidad de escalamiento
pair o,p[],x,y,z,dx;
path q[];
o=(0,0);

%---- los ejes coordenados---%

x=(-1u,-1u);
y=(2u,0);
z=(0,2u);

dx=dir(angle(x));


%--- la hoja ---% 

d=1u;
l=1.3u;

q0=(l*(-dx)-(d,0))--(l*dx-(d,0));

draw q0;
draw q0 shifted (2d,0);

c=0.6;

a=35;
for i=1 upto (a-1):
draw (l*dx-(d,0)-2l/a*i*dx)--(l*dx+(d,0)-2l/a*i*dx) withcolor c*white;
endfor;


%--- el dibujo de los ejes ---%

drawarrow o--x withpen pencircle scaled 1;
drawarrow o--y withpen pencircle scaled 1;
drawarrow o--z withpen pencircle scaled 1;

%se alteraron los labels al alterarse la gráfica!!! %

label.urt(btex y etex,z);
label.urt(btex x etex,y);
label.rt(btex z etex,x);


%---la flecha---% 

p0=-1.2*l*dx;
p1=1.2*l*dx;

l2=0.25u;
l3=0.5u;
l4=0.8u;


q5=p0--p0+(l2,0)--p0+(l2,0)-l3*dx--p0+(2l2,0)-l3*dx--p0-l4*dx--p0+(-2l2,0)-l3*dx--p0+(-l2,0)-l3*dx--p0+(-l2,0)--cycle;
q6=p1--p1+(l2,0)--p1+(l2,0)+l3*dx--p1+(2l2,0)+l3*dx--p1+l4*dx--p1+(-2l2,0)+l3*dx--p1+(-l2,0)+l3*dx--p1+(-l2,0)--cycle;

draw q5;
draw q6;

%--- el efecto del desplazamiento ---% 
h=0.7u;

p5=0.6u*dx; 
p6=p5+(0,h);
p7=p6-2*p5;
p8=p7-(0,h);

draw p5--p6 dashed evenly;
draw p7--p8 dashed evenly;
draw p6--p7; 
drawarrow p7--0.8[p7,p6];

label.top("P",p7);
label.ulft("Q",p6);

draw p6 withpen pencircle scaled 2;
draw p7 withpen pencircle scaled 2;


%--- las medidas del ancho ---%

p10=(d,0);
p11=(-d,0);

draw p10 withpen pencircle scaled 2;
draw p11 withpen pencircle scaled 2;

label.lrt(btex $\frac{w}{2}$ etex,p10);
label.ulft(btex $-\frac{w}{2}$ etex,p11);


endfig;
end;