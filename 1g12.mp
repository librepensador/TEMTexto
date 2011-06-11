beginfig(12);


verbatimtex
%&latex
\documentclass{amsart}
\usepackage[spanish]{babel}
\begin{document}
etex


u=0.8cm;
l=2u;
f=0.8;
h=l;
pair x,y,z,o,tx,ty,p[];
path q,r,s;

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
p6=o+(0,h);

q=p0{ty}..p1{-tx}--p2{tx}..p3{-ty}--cycle;

p77=((p6+10u*dir(angle(y)-40)--p6) intersectionpoint (p2{tx}..p3{-ty}));
p7=p77-(0,(1/6)*h);
p9=p7-(0,1/3*h);
p88=((p77--(p77+(0,-5u))) intersectionpoint (q));
p8=p7+length(p7-p9)*-tx;
p66=((p8--(p8+(0,-3u))) intersectionpoint (q));

r=(p0{ty}..p1{-tx}) cutbefore (p77--(p77+(0,-5u))) cutafter (p8--(p8-(0,3u)));

s=p7--p9--(r shifted (0,(1/3+1/6)*h))--(p66+(0,(2/3+1/6)*h))--(r shifted (0,(2/3+1/6)*h))--cycle;

draw s; 
draw q;
draw p88--(p88+(0,(1/3+1/6)*h)) dashed evenly;
draw p66--(p66+(0,(1/3+1/6)*h)) dashed evenly;
draw p3--p6;
draw p2--p6;

drawarrow (1/2[p9,(p66+(0,(2/3+1/6)*h))]-(0.2u,0.2u)){dir(35)}..(1/2[p9,(p66+(0,(2/3+1/3)*h))]+(1.2u,0.5u)){dir(0)};
label.rt(btex $d\mathbf{S}=\rho d\phi dz\,\boldsymbol{\hat{\rho}}$ etex,(1/2[p9,(p66+(0,(2/3+1/3)*h))]+(1.2u,0.5u)));

fill s withcolor 0.8*white;

draw o--p88 dashed evenly;
draw o--p66 dashed evenly;

drawarrow (0.5u*dir(angle(p88))){dir(10)}..(0.6u*dir(angle(p66))){dir(angle(p66)+90)};
label.llft(btex $d\phi$ etex,0.5u*dir(angle(p88)));
label.rt(btex $\rho d\phi$ etex,p88);

labeloffset:=2mm;
drawarrow p6--((p6+10u*dir(angle(y)-10)--p6) intersectionpoint (p2{tx}..p3{-ty}));
label.top(btex $\rho=\rho_0$ etex,1/2[p6,((p6+10u*dir(angle(y)-10)--p6) intersectionpoint (p2{tx}..p3{-ty}))]);
label.llft(btex $dz$ etex,p7);

%--- vector director ---% 
p20=1/2[(p66+(0,(2/3+1/6)*h)),p9]; 
p21=p20+u*dir(angle(p20-(p6+p7-p77+0.5*(p9-p7))) );

drawarrow p20--p21 withpen pencircle scaled 1;

label.urt(btex $\boldsymbol{\hat{\rho}}$ etex,p21);

%--- el engaño ---% 
draw (0,3.2u) withcolor white;



endfig;
end;