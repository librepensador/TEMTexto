beginfig(10);


verbatimtex
%&latex
\documentclass{amsart}
\usepackage[spanish]{babel}
\begin{document}
etex

u=1cm;
l=1.5u;
ll=1/6*l;
pair x,y,z,o,tx,ty,p[];
path q;

o=(0,0);
z=(0,3u);
y=(3u,0);
x=(-1u,-1u);
tx=dir(angle(x));
ty=dir(angle(y));

drawarrow o--x withpen pencircle scaled 1; 
drawarrow o--y withpen pencircle scaled 1; 
drawarrow o--z withpen pencircle scaled 1; 

label.lft(btex $x$ etex, 1[o,x]);
label.rt(btex $y$ etex, 1[o,y]);
label.lft(btex $z$ etex, 1[o,z]);

p0=(0,l);
p1=p0+l*tx;
p2=p1+2l*ty;
p3=p2+l*-tx;

p4=p1+1/3*l*-tx;
p11=p4+ll*-tx;
p7=p4+2/3*2l*ty;
p8=p7+2ll*ty;
p9=p11+2/3*2l*ty;
p10=p9+2ll*ty;
p5=p7+(0,-ypart p0);
p6=p8+(0,-ypart p0);
p12=p4+(0,-ypart p0);
p13=p11+(0,-ypart p0);
p14=p5+(p0-p4);
p15=p6+(p0-p4);

draw p0--p1--p2--p3--cycle;
q=p7--p8--p10--p9--cycle;
draw q;

fill q withcolor 0.8*white;

draw p5--p7 dashed evenly;
draw p6--p8 dashed evenly;
draw p11--p9 dashed evenly;
draw p4--p7 dashed evenly;
draw p5--p14 dashed evenly;
draw p6--p15 dashed evenly;
draw p4--p12 dashed evenly;
draw p11--p13 dashed evenly;

label.ulft(btex $dx$ etex,1/2[p4,p11]);
label.top(btex $dy$ etex,1/2[p14,p15]);

drawarrow 1/2[p8,p9]{dir(90)}..1/2[p8,p9]+l*dir(45){dir(0)};
label.rt(btex $d\mathbf{S}=dxdy\,\mathbf{\hat{z}}$ etex,1/2[p8,p9]+l*dir(45));

%--- El vector director ---% 

p20=1/2[p7,p10];
p21=p20+u*(0,1);

drawarrow p20--p21 withpen pencircle scaled 1; 

label.urt(btex $\mathbf{\hat{z}}$ etex,p21);

%--- el engaño ---% 
draw (0,3.2u) withcolor white;

endfig;
end;