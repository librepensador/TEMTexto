beginfig(10);

verbatimtex
%&latex
\documentclass{amsart}
\usepackage[spanish]{babel}
\begin{document}
etex


u=1cm;
pair p[],x,y,z,o,oo;
path q[];
numeric l;

o=(0,0);

%--- la figurita interesante ---% 
oo=0.5(u,u);
u1=1.5u;
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

label.ulft(btex $V'$ etex,p4);

%--- los ejes coordenados ---%
x=(-2u,-0.5u);
y=(2u,-0.5u);
z=(0,2u);

label.llft(btex x etex,x);
label.urt(btex z etex,z);
label.lrt(btex y etex,y);

draw o--(q1 intersectionpoint (o--x)) dashed evenly withpen pencircle scaled 1;
draw o--(q1 intersectionpoint (o--y)) dashed evenly withpen pencircle scaled 1;
draw o--(q1 intersectionpoint (o--z)) dashed evenly withpen pencircle scaled 1;

drawarrow (q1 intersectionpoint (o--x))--x withpen pencircle scaled 1;
drawarrow (q1 intersectionpoint (o--y))--y withpen pencircle scaled 1;
drawarrow (q1 intersectionpoint (o--z))--z withpen pencircle scaled 1;

%--- los vectores---%

p15=(-1.5u,u); % r
drawarrow o--p15;
label.lft(btex $\mathbf{r}$ etex,p15);

p16=(0.7u,0.5u); %r'
drawarrow o--p16;
label.top(btex $\mathbf{r'}$ etex,1/2*p16);

%--- el dichoso cubo ---%

l=0.3u; 

p20=p16+(l,0);
p21=p20+(0,l);
p22=p21+(-l,0);

p23=p20+0.2u*dir(20);
p24=p23+(0,l);
p25=p24+(-l,0);

draw p16--p20--p21--p22--cycle withpen pencircle scaled 0.7;
draw p20--p23--p24--p21 withpen pencircle scaled 0.7;
draw p22--p25--p24 withpen pencircle scaled 0.7;

p30=1/2[p23,p20];
p31=p30+(u,-0.5u);

drawarrow p31{dir(180)}..{dir(135)}p30;
label.rt(btex $d\mathbf{p}$ etex,p31);

p32=1/2[p24,p25];
p33=p32+(u,0.5u);

drawarrow p33{dir(180)}..{dir(225)}p32;
label.rt(btex $dV'$ etex,p33);


endfig;
end;