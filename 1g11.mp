beginfig(11);


verbatimtex
%&latex
\documentclass{amsart}
\usepackage[spanish]{babel}
\begin{document}
etex

u=1cm;
l=2u;
f=0.8;
h=1.2l;
pair x,y,z,o,tx,ty,p[];
path q,r;

o=(0,0);
z=(0,3u);
y=(3u,0);
x=(-1.8u,-1.8u);
tx=dir(angle(x));
ty=dir(angle(y));

drawarrow o--x withpen pencircle scaled 1; 
drawarrow o--y withpen pencircle scaled 1; 
drawarrow o--z withpen pencircle scaled 1; 

label.lft(btex $x$ etex, 1[o,x]);
label.rt(btex $y$ etex, 1[o,y]);
label.lft(btex $z$ etex, 1[o,z]);

p0=f*l*tx;
p1=l*ty;
p2=p1+(0,h);
p3=p0+(0,h);

q=p0{ty}..p1{-tx}--p2{tx}..p3{-ty}--cycle;

p4=2/3[p0,p2];
p5 = (p4--(p4+(0,-10u)))  intersectionpoint q ;
p6=p4-p5;
p9=p4+u*dir(angle(p4-p6));
p8=(p9--(p9-10u*ty)) intersectionpoint (p6--(p6+10u*tx));
p7=(p9--(p9-10u*tx)) intersectionpoint (p6--(p6+10u*ty));

draw p4--p9;
draw p8--p9--p7;
draw p8--((p8--p6) intersectionpoint (p3--p0));
draw ((p8--p6) intersectionpoint (p3--p0))--((p8--p6) intersectionpoint ((p0{ty}..p1{-tx}) shifted (0,h))) dashed evenly;
draw p6--((p8--p6) intersectionpoint ((p8--p6) intersectionpoint ((p0{ty}..p1{-tx}) shifted (0,h))));

draw p6--((p7--p6) intersectionpoint ((p0{ty}..p1{-tx}) shifted (0,h)));
draw ((p7--p6) intersectionpoint ((p0{ty}..p1{-tx}) shifted (p4-p5)))--((p7--p6) intersectionpoint ((p0{ty}..p1{-tx}) shifted (0,h))) dashed evenly;
draw ((p7--p6) intersectionpoint ((p0{ty}..p1{-tx}) shifted (p4-p5)))--p7;

draw p0{ty}..p1{-tx};
draw ((p4--p6) intersectionpoint ((p0{ty}..p1{-tx}) shifted (0,h)))--(p6);
draw ((p4--p6) intersectionpoint ((p0{ty}..p1{-tx}) shifted (0,h)))--(p9) dashed evenly;
draw p0{ty}..p1{-tx};
draw ((p4--p5) intersectionpoint (p8--p9))--(p5);
draw ((p4--p5) intersectionpoint (p8--p9))--(p4) dashed evenly;
draw p5--o dashed evenly;

draw ((p1--p2) intersectionpoint (p7--p9))--(p1);
draw ((p1--p2) intersectionpoint (p7--p9))--((p1--p2) intersectionpoint (p7--p6)) dashed evenly;
draw ((p1--p2) intersectionpoint (p7--p6))--(p2);
draw ((p3--p0) intersectionpoint (p8--p6))--(p3);
draw ((p3--p0) intersectionpoint (p8--p6))--((p3--p0) intersectionpoint (p8--p9)) dashed evenly;
draw ((p3--p0) intersectionpoint (p8--p9))--p0;

draw ((p0{ty}..p1{-tx}) shifted (p4-p5));
draw p2{tx}..p3{-ty};
draw p4 withpen pencircle scaled 4;

drawarrow p4--(p4+(2u,0));
label.rt(btex $(\rho_0,\phi_0,z_0)$ etex,(p4+(2u,0)));

label.ulft(btex $p$ etex,p4);

drawarrow (1/10[p0,p2]+(-1u,0.5u))--(1/10[p0,p2]+(0,0.5u));
label.lft(btex Cilindro $\rho=\rho_0$ etex,(1/10[p0,p2]+(-u,0.5u)));

drawarrow (0.5u*tx){-tx-dir(90)}..(0.5u*dir(angle(p5))){dir(angle(p5))+dir(90)};
label.bot(btex $\phi=\phi_0$ etex,1/2[(0.5u*tx),(0.5u*dir(angle(p5)))]);

drawarrow (p6+(-1.2u,-0.4u))--(p6+(-0.2u,-0.4u));
label.lft(btex $z=z_0$ etex,(p6+(-1.2u,-0.4u)));

%--- vectores directores unitarios ---% 

p20=p4; 
p21=p20+0.7u*dir(angle(p9-p4)); 
p22=p20+(0,u);


drawarrow p20--p21 withpen pencircle scaled 1;
drawarrow p20--p22 withpen pencircle scaled 1;


label.lrt(btex $\boldsymbol{\hat{\rho}}$ etex,p21);
label.urt(btex $\mathbf{\hat{z}}$ etex,p22);

r=((p0{ty}..p1{-tx}) shifted (p8-p0)) cutafter (p6--p9);

p24=direction (length(r)) of r;

p25=p20+u*dir(angle(p24));
drawarrow p20--p25 withpen pencircle scaled 1;
label.urt(btex $\boldsymbol{\hat{\varphi}}$ etex,p25);




endfig;
end;