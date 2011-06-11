%Diferenciales del superficie con phi=phi_0:

beginfig(13); 


verbatimtex
%&latex
\documentclass{amsart}
\usepackage[spanish]{babel}
\begin{document}
etex


u=0.8cm;
l=2.5u;
f=0.9;
pair x,y,z,o,p[],t,tx;
path q;

o=(0,0);
z=(0,3u);
y=(3u,-1u);
x=(-3u,-1u);

tx=dir(angle(x));

drawarrow o--x withpen pencircle scaled 1; 
drawarrow o--y withpen pencircle scaled 1; 
drawarrow o--z withpen pencircle scaled 1; 

label.lft(btex $x$ etex, 1[o,x]);
label.rt(btex $y$ etex, 1[o,y]);
label.lft(btex $z$ etex, 1[o,z]);

p1=l*f*dir(angle(y)-30);
t=dir(angle(p1));
p2=p1+(0,l);
p3=o+(0,l);
p8=3/5[o,p1];
p9=4/5[o,p1];
p4=p9+3/5*(p3);
p5=p9+4/5*(p3);
p7=p8+3/5*(p3);
p6=p8+4/5*(p3);
p10=4/5*(p3);
p11=3/5*(p3);

q=p4--p5--p6--p7--cycle;

draw q;
fill q withcolor 0.8*white;

draw o--p1--p2--p3;
draw p4--p9 dashed evenly;
draw p11--p7--p8 dashed evenly;
draw p6--p10 dashed evenly;
drawarrow 1/2[p7,p5]{dir(90)}..(1/2[p7,p5]+(u,u)){dir(0)};

label.rt(btex $d\mathbf{S}=d\rho dz\, \boldsymbol{\hat{\varphi}}$ etex,(1/2[p7,p5]+(u,u)));
label.llft(btex $dz$ etex,p10);
label.lft(btex $d\rho$ etex,p9);

drawarrow (0.7u*dir(angle(x))){dir(angle(x)+90)}..((0.7*f*u*dir(angle(p1)))){dir(angle(p1)+90)};
labeloffset:=3mm;
label.bot(btex $\phi=\phi_0$ etex,1/2[u*dir(angle(x)),f*u*dir(angle(p1))]);

%--- vector director ---% 
p20=1/2[p7,p5];
p21=p20-u*tx;

drawarrow p20--p21 withpen pencircle scaled 1; 

label.rt(btex $\boldsymbol{\hat{\varphi}}$ etex,p21);


%--- el engaño ---% 
draw (0,3.2u) withcolor white;

endfig;
end;
