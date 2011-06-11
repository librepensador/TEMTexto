beginfig(4);

verbatimtex
%&latex
\documentclass{amsart}
\usepackage[spanish]{babel}
\begin{document}
etex




u=1cm;
pair o,p[];
path q[];

o=(0,0);


%--- la manta ---% 
f=1.5;
p0=f*(0,-1.25u);
p1=f*(-2,0)*u;
p2=f*(0,0.5)*u;
p3=f*(2,0)*u;


a=20;
b=30;
c=5;

q0=p1{dir(-a)}..{dir(270+2.5a)}p0;
q1=p0{dir(90-2.5a)}..{dir(a)}p3;

q2=p3{dir(180-b)}..{dir(180-c)}p2;
q3=p2{dir(180+c)}..{dir(180+b)}p1;

draw q0--q1--q2--q3;

%--- un cuadrito de la manta ---% 

q5=q0 scaled 0.35;
q6=q1 scaled 0.35;
q7=q2 scaled 0.35;
q8=q3 scaled 0.35;

draw q5;
draw q6;
draw q7;
draw q8;

%--- los vectores ---% 
d=u;
p5=(0,d);
drawarrow o--p5 withpen pencircle scaled 1;
label.rt(btex $\mathbf{E_{dso}}$ etex,p5);

p6=(0,-d);
drawarrow o--p6 dashed evenly withpen pencircle scaled 1;
label.rt(btex $\mathbf{E_{dsi}}$ etex,p6);

p7=(1.5u,0);
p8=(1.5u,0)+(0,d);
drawarrow p7--p8 withpen pencircle scaled 1;
label.rt(btex $\mathbf{\hat{n}}$ etex,p8);

label.lrt(btex $dS$ etex,point 1/2*length(q6) of q6);

endfig;
end;