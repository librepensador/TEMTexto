beginfig(8);

verbatimtex
%&latex
\documentclass{amsart}
\usepackage[spanish]{babel}
\begin{document}
etex

u=1cm;
pair p[],x,y,z,o,oo,t,r[],l[];
path q[];
numeric b,c;


%---- los ejes coordenados---%
o=(0,0);
x=(-2,-0.5)*u;
y=(2,-0.5)*u;
z=(0,2)*u;




%--- el tubérculo y su contorno ---% 
oo=o;

p1=(0,0.8u)+oo;
p2=(-0.3u,u)+oo;
p3=(0.3u,0.7u)+oo;
p4=(-1.2u,0.7u)+oo;
p5=(1.2u,0.7u)+oo;
p6=(-0.8u,0)+oo;
p7=(0.9u,0)+oo;
p8=(1.2u,-1.2u)+oo;
p9=(-1.2u,-0.5u)+oo;
p10=(0,-u)+oo;

q1=(p1..p2..p4..p6..p9..p10..p8..p7..p5..p3..cycle);

for i=1 upto 200:
draw (p1..p2..p4..p6..p9..p10..p8..p7..p5..p3..cycle) shifted (-oo) scaled ((200-i)/200) shifted oo withcolor i*0.01*white;
endfor;

p11=(-0.3u,0.5u);
drawarrow o--p11;
label.lft(btex $\mathbf{r}$ etex,p11);

label.lft(btex $\rho(\mathbf{r})$ etex,p4);

%--- ejes coordenados ---%
label.llft(btex x etex,x);
label.lrt(btex y etex,y);
label.urt(btex z etex,z);

drawarrow o--x;
drawarrow o--y;
drawarrow o--z;


%--- las líneas de campo ---% 
q2=((-1.5u,0){dir(30)}..o..{dir(30)}(1.5u,0)) rotated 45 scaled 1.7;

for i=1 upto 7:
drawarrow subpath (0,0.2*length(q2)) of q2 shifted (-4u+i*u,0);
drawarrow subpath (0,0.9*length(q2)) of q2 shifted (-4u+i*u,0);
draw subpath (0.9*length(q2),length(q2)) of q2 shifted (-4u+i*u,0);
endfor;

p20=(3.5u,0);
label(btex $\mathbf{E}$ etex,p20)


endfig;
end;