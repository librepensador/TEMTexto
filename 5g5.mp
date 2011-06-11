beginfig(5);

verbatimtex
%&latex
\documentclass{amsart}
\usepackage[spanish]{babel}
\begin{document}
etex


u=2cm; %unidad de escalamiento
pair p[],o,x,y,z;
path q[];

%--- sistema coordenad0 ---% 

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

p0=(0.5,1)*u; % -q 
p1=(1,0.5)*u; % q 
p2=(-1,1)*u; % r 

label.top(btex $-q$ etex,p0);
label.rt(btex $+q$ etex,p1);


drawarrow o--p0 withpen pencircle scaled 1;
drawarrow o--p1 withpen pencircle scaled 1;
drawarrow o--p2 withpen pencircle scaled 1;
drawarrow p0--p1 withpen pencircle scaled 1; 

label.urt(btex $\mathbf{l}$ etex,1/2[p0,p1]);
label.lrt(btex $\mathbf{r'}-\mathbf{l}$ etex,1/2[o,p1]);
label.ulft(btex $\mathbf{r'}$ etex,1/2[o,p0]);
label.urt(btex $\mathbf{r}$ etex,1/2[o,p2]);

draw p0 withpen pencircle scaled 3;
draw p1 withpen pencircle scaled 3;
draw p2 withpen pencircle scaled 3;

endfig;
end;