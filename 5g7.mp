beginfig(7);

verbatimtex
%&latex
\documentclass{amsart}
\usepackage[spanish]{babel}
\begin{document}
etex


u=1.cm; %unidad de escalamiento
pair p[],o,x,y,z;
path q[];

%--- sistema coordenado ---% 

o=(0,0);
x=(-1.5,-0.5)*u;
y=(1.5,-0.5)*u;
z=(0,1.5)*u;

label.llft(btex x etex,x);
label.lrt(btex y etex,y);
label.rt(btex z etex,z);

drawarrow o--x withpen pencircle scaled 1;
drawarrow o--y withpen pencircle scaled 1;
drawarrow o--z withpen pencircle scaled 1;



%--- definición de puntos y gráficas ---% 

p1=(0.5,1)*u; %-q
p2=(1.5,0.5)*u; %q

draw p1 withpen pencircle scaled 3;
draw p2 withpen pencircle scaled 3;

label.top(btex $-q$ etex,p1);
label.rt(btex $q$ etex,p2);

drawarrow o--p1;
drawarrow p1--p2;

label.lrt(btex $\mathbf{r'}$ etex,1/2[o,p1]);
label.urt(btex $\mathbf{l}$ etex,1/2[p1,p2]);


endfig;
end;