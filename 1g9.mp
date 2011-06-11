beginfig(9);


verbatimtex
%&latex
\documentclass{amsart}
\usepackage[spanish]{babel}
\begin{document}
etex


u=0.8cm;
l=1.5u;
ll=1/6*l;
f=1.8;
pair x,y,z,o,tx,ty,p[];
path q;

o=(0,0);
z=(0,3u);
y=(3u,-1u);
x=(-3u,-1u);
tx=dir(angle(y));
ty=dir(angle(x));

drawarrow o--x withpen pencircle scaled 1; 
drawarrow o--y withpen pencircle scaled 1; 
drawarrow o--z withpen pencircle scaled 1; 

label.lft(btex $x$ etex, 1[o,x]);
label.rt(btex $y$ etex, 1[o,y]);
label.lft(btex $z$ etex, 1[o,z]);

p0=l*tx;
p1=p0+(0,2l);
p2=p1+f*l*ty;
p3=p0+f*l*ty;

p11=p0+(0,2/3*2l);
p4=p11+(0,2ll);
p5=p0+2/3*f*l*ty;
p6=p5+f*ll*ty;
p7=p5+(0,2/3*2l);
p8=p7+(0,2ll);
p9=p8+f*ll*ty;
p10=p9+(0,-2ll);
p12=p5+l*(-tx);
p13=p6+l*(-tx);
p14=p4+l*(-tx);
p15=p11+l*(-tx);

draw p0--p1--p2--p3--cycle;
q=p8--p9--p10--p7--cycle;
draw q;

fill q withcolor 0.8*white;

draw p5--p7 dashed evenly;
draw p6--p10 dashed evenly;
draw p11--p7 dashed evenly;
draw p4--p8 dashed evenly;
draw p5--p12 dashed evenly;
draw p6--p13 dashed evenly;
draw p4--p14 dashed evenly;
draw p11--p15 dashed evenly;

label.ulft(btex $dx$ etex,1/2[p12,p13]);
label.rt(btex $dz$ etex,1/2[p4,p11]);

drawarrow 1/2[p7,p9]{dir(90)}..1/2[p7,p9]+l*dir(135){dir(180)};
label.lft(btex $d\mathbf{S}=dxdz\,\mathbf{\hat{y}}$ etex,1/2[p7,p9]+l*dir(135));

%--- vector director ---% 
p20=1/2[p7,p9];
p21=p20+u*tx; 

drawarrow p20--p21 withpen pencircle scaled 1; 

label.lrt(btex $\mathbf{\hat{y}}$ etex,p21);


endfig;
end;