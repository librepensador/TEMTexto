beginfig(1);

verbatimtex
%&latex
\documentclass{amsart}
\usepackage[spanish]{babel}
\begin{document}
etex


u=1.5cm; %unidad de escalamiento
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

p1=(-0.5,1)*u;
p2=(-1,0.5)*u;
p3=(0.5,1)*u;
p4=(0.7,-0.4)*u;
p5=(1.5,0.5)*u;

draw p1 withpen pencircle scaled 3;
draw p2 withpen pencircle scaled 3;
draw p3 withpen pencircle scaled 3;
draw p4 withpen pencircle scaled 3;
draw p5 withpen pencircle scaled 3;

drawarrow o--p1;
drawarrow o--p2;
drawarrow o--p3;
drawarrow o--p4;
drawarrow o--p5;

label.lft(btex $\mathbf{r_2}$ etex,1/2[o,p1]);
label.llft(btex $\mathbf{r_1}$ etex,1/2[o,p2]);
label.rt(btex $\mathbf{r_3}$ etex,1/2[o,p3]);
label.llft(btex $\mathbf{r_n}$ etex,1/2[o,p4]);
label.lrt(btex $\mathbf{r_i}$ etex,1/2[o,p5]);


label.top(btex $q_2$ etex,p1);
label.top(btex $q_1$ etex,p2);
label.top(btex $q_3$ etex,p3);
label.bot(btex $q_n$ etex,p4);
label.top(btex $q_i$ etex,p5);


for i=1 upto 3:
draw ((1/4*i)[p3,p5]) withpen pencircle scaled 1;
draw ((1/4*i)[p4,p5]) withpen pencircle scaled 1;
endfor;

%--- los vectores y nombres ---% 



endfig;
end;