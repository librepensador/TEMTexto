beginfig(18);

verbatimtex
%&latex
\documentclass{amsart}
\usepackage[spanish]{babel}
\begin{document}
etex


u=0.8cm;
pair x,y,z,o,p[];
numeric t[];
path q[];

% ----- Sistema coordenado ----- %
o=(0,0);
z=(0,3.8u);
y=(3u,-u);
x=(-3u,-u);

drawarrow o--x withpen pencircle scaled 1; 
drawarrow o--y withpen pencircle scaled 1; 
drawarrow o--z withpen pencircle scaled 1; 

label.lft(btex $x$ etex, 1[o,x]);
label.rt(btex $y$ etex, 1[o,y]);
label.lft(btex $z$ etex, 1[o,z]);

%--- El cono --- %
h=3u;
q1=fullcircle xscaled 4u yscaled u shifted (0,h);
draw q1;


%--- Definición de puntos ---%
p0=(0,h);
p2=(p0--(p0+(-5u,0))) intersectionpoint (q1);
p1=(p0--(p0+(8u,0))) intersectionpoint (q1);
p5=4/6*p0;
p6=(3/6)*p0;
p3=(p5--(p5+(-8u,0))) intersectionpoint (p2--o);
p4=(p6--(p6+(-8u,0))) intersectionpoint (p2--o);

draw p1--o;
draw p2--o;


%--- óvalos de referencia ---%

q2=(fullcircle xscaled (2*xpart p3) yscaled (2/3*u)) shifted p5;
q3=(fullcircle xscaled (2*xpart p4) yscaled (3/6*u)) shifted p6;

%--- definición de puntos de intersección ---%
p7=p5+5u*dir(-10);
p12=p5+5u*dir(-40);
p13=p6+5u*dir(-10);
p14=p6+5u*dir(-40);

p9= (q2) intersectionpoint (p5--p7);
p8= (q2) intersectionpoint (p5--p12);
p11= (p6--p13) intersectionpoint (q3);
p10= (p6--p14) intersectionpoint (q3);

draw q3 cutafter (p6--p14) cutbefore (p6--p13);
draw p8--p10; 
draw p9--p11;
draw q2 cutafter (p5--p8) cutbefore (p5--p9);

draw p5--p9 dashed evenly;
draw p5--p8 dashed evenly;


%--- vectores ---% 

drawarrow (1/2[p8,p11])--(1/2[p8,p11]+(1.3u,-0.3u));
label.rt(btex $d\mathbf{S}=\sen\theta dr d\phi\,\boldsymbol{\hat{\theta}}$ etex,(1/2[p8,p11]+(1.3u,-0.3u)));

p15=1/2[p11,p9];
drawarrow p15{dir(0)}..(p15+(1.2u,u)){dir(90)};
label.top(btex $rd\theta$ etex,(p15+(1.5u,u)));

p16=1/2[p10,p11];
drawarrow p16{dir(-90)}..(p16+(1.2u,-u)){dir(0)};
label.rt(btex $r\sen\theta d\phi$ etex,(p16+(1.2u,-u)));

p17=1/2[p5,p8];
p18=1/2[p5,p9];
p19=(-xpart p17,ypart p17);
p20=p18+(0.4u,0.15u);

drawarrow p19{dir(-10)}..p17{dir(10)};
drawarrow p20{dir(200)}..p18{dir(190)};

label.lft(btex $d\phi$ etex,p19);

%--- vector unitario ---%

p30=(q2) intersectionpoint (o--z); 
p31=1/2[p8,p11];

p32=p31+0.8u*dir(angle(p31-p30));
drawarrow p31--p32 withpen pencircle scaled 1;

label.rt(btex $\boldsymbol{\hat{\theta}}$ etex,p32);

% --- el engaño para que quepa en la tabla ---% 

draw (0,4u) withcolor white;


endfig;
end;