beginfig(15);


verbatimtex
%&latex
\documentclass{amsart}
\usepackage[spanish]{babel}
\begin{document}
etex



u=0.8cm;
pair x,y,z,o,p[],t,tt,tx;
path q[];

%--- los ejes coordenados ---% 

o=(0,0);
z=(0,3u);
y=(3u,-u);
x=(-3u,-u);
t=dir(-30);
tt=dir(-6);
tx=dir(angle(x));

drawarrow o--x withpen pencircle scaled 1; 
drawarrow o--y withpen pencircle scaled 1; 
drawarrow o--z withpen pencircle scaled 1; 

label.lft(btex $x$ etex, 1[o,x]);
label.rt(btex $y$ etex, 1[o,y]);
label.lft(btex $z$ etex, 1[o,z]);


%--- la esfera y el cono ---% 

q1= fullcircle scaled 3u;
q2= fullcircle xscaled 5u yscaled 0.55u;

p0=(0,2u);
p1=p0+(-2.5u,0);
p2=p0+(2.5u,0);
p3=p0+2u*t;
p4=p3-p0;
p5=((p1--o) intersectionpoint (q1));
p6=((p2--o) intersectionpoint (q1));


q3=fullcircle xscaled length(p6-p5) yscaled 0.25u;

p99=(1/2[p5,p6]--(1/2[p5,p6]+3u*tt)) intersectionpoint (q3 shifted 1/2[p5,p6]);
p100=((o--(p99+3u*dir(angle(p99)))) intersectionpoint (p0--p3));

q4=fullcircle xscaled 2u yscaled 3u;

draw ((q1 cutafter (p1--o))) dashed evenly;
draw (q1 cutbefore (p1--o)) cutafter (o--p4);
draw (q1 cutbefore (p4--o)) dashed evenly;
draw q2 shifted p0;
draw ((q3 shifted 1/2[p5,p6]) cutbefore (p1--o));
draw ((q3 shifted 1/2[p5,p6]) cutafter (p1--o)) dashed evenly;
draw p99 withpen pencircle scaled 3;
draw o--p99 dashed evenly;
draw p99--p100;
draw p1--p5;
draw p5--o dashed evenly;
draw p2--((p2--o) intersectionpoint (p0--p3));
draw ((p2--o) intersectionpoint (p0--p3))--o dashed evenly;
draw p3--p4--((q4) intersectionpoint (o--p4));
draw ((q4) intersectionpoint (o--p4))--o dashed evenly;
draw ((p0--p100) cutafter (q2 shifted p0));
draw p100--p3;
draw ((p0--p100) cutbefore (q2 shifted p0)) dashed evenly;
draw (q4 cutafter ((o--(p99+3u*dir(angle(p99))))));
draw (q4 cutbefore ((o--(p99+3u*dir(angle(p99))))) cutafter (o--(0,5u))) dashed evenly;
draw (q4 cutbefore (o--p4));

drawarrow o--(-1.5u,0);
drawarrow (p99+(2u,-0.8u))--(p99+0.1*(2u,-0.8u));
drawarrow (9/10*p0){dir(180)}..(4/5[o,p1]){dir(angle(p1)+60)};
drawarrow (u*dir(angle(x))){dir(angle(x)+120)}..(0.9u*dir(angle(p4))){dir(angle(p4)+60)};

label.lft(btex $r=r_0$ etex,(-1.5u,0));
label.rt(btex P$=(r_0,\phi_0,\theta_0)$ etex,(p99+(2u,-0.8u)));
label(btex $\theta=\theta_0$ etex,1/2[p0,p1]);
labeloffset:=3mm;
label.bot(btex $\phi=\phi_0 $ etex,1/2[(u*dir(angle(x))),(0.9u*dir(angle(p4)))]);


%--- vectores unitarios ---%
labeloffset:=1mm;
p20=p99;
p21=p20+1.5u*dir(angle(p20)); 
p23=p20+1.2u*dir(-63);
p24=p20+1.5u*dir(15);

drawarrow p20--p21 withpen pencircle scaled 1; 
label.rt(btex $\mathbf{\hat{r}}$ etex,p21);

drawarrow p20--p23 withpen pencircle scaled 1; 
label.rt(btex $\boldsymbol{\hat{\theta}}$ etex,p23);

drawarrow p20--p24 withpen pencircle scaled 1; 
label.rt(btex $\boldsymbol{\hat{\varphi}}$ etex,p24);


%--- el engaño ---% 
draw (0,3.2u) withcolor white;

endfig;
end;
