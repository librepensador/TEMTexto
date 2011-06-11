%Diferenciales del superficie con z=z_0:

beginfig(14); 


verbatimtex
%&latex
\documentclass{amsart}
\usepackage[spanish]{babel}
\begin{document}
etex

u=1cm;
l=2.8u;
f=0.8;
pair x,y,z,o,p[],tx,ty;
path q,r;

o=(0,0);
z=(0,3u);
y=(3u,0);
x=(-1.5u,-1.5u);
tx=dir(angle(x));
ty=dir(angle(y));

drawarrow o--x withpen pencircle scaled 1; 
drawarrow o--y withpen pencircle scaled 1; 
drawarrow o--z withpen pencircle scaled 1; 

label.lft(btex $x$ etex, 1[o,x]);
label.rt(btex $y$ etex, 1[o,y]);
label.lft(btex $z$ etex, 1[o,z]);

h=2u;

p0=(0,h);
p1=p0+f*l*tx;
p2=p1+l*ty;
p3=p2+f*l*-tx;

p5=0.4*l*dir(angle(y)-40)+p0;
p4=0.47l*dir(angle(y)-20)+p0;
p6=0.6l*dir(angle(y)-40)+p0;
p7=0.68l*dir(angle(y)-20)+p0;


r=p5--p6{dir(angle(p6-p0)+65)}..p7{dir(angle(p7-p0)+90)}--p4{dir(angle(p4-p0)-90)}..p5{dir(angle(p5-p0)-115)}--cycle;

p8=(1/2[p6,p4]--(1/2[p6,p4]+(u*dir(-30)))) intersectionpoint (r);
p9=0.5[p0,p5] rotatedaround (p0,-50);
p10=0.6[p0,p4] rotatedaround (p0,30);

draw r;
fill r withcolor 0.8*white;

draw p0--p1--p2--p3--cycle;
draw p5--p0 dashed evenly;
draw p4--p0 dashed evenly;

drawarrow p9{dir(angle(p9-p0)+90)}..0.5[p0,p5]{dir(angle(0.5[p0,p5]-p0)+75)};
drawarrow p10{dir(angle(p10-p0)-100)}..0.5[p0,p4]{dir(angle(0.5[p0,p4]-p0)-90)};
drawarrow (p8+(0.8u,-0.2u)){dir(180)}..p8{dir(angle(p8-p0)-180)};
drawarrow (1/2[p4,p6]){dir(90)}..(1/2[p4,p6]+(u,u)){dir(0)};

label.rt(btex $\rho d\phi$ etex,(p8+(0.8u,-0.2u)));
label.top(btex $z=z_0$ etex, 1/3[p1,p2]);
label.bot(btex $d\rho$ etex,p5);
label.top(btex $d\phi$ etex,p10);
label.rt(btex $d\mathbf{S}=\rho d\phi d\rho\,\mathbf{\hat{z}}$ etex,(1/2[p4,p6]+(u,u)));

%--- vector director ---% 
p20=1/2[p4,p6];
p21=p20+(0,u);

drawarrow p20--p21 withpen pencircle scaled 1; 
label.top(btex $\mathbf{\hat{z}}$ etex,p21);




%--- el engaño ---% 
draw (0,3.2u) withcolor white;

endfig;
end;
