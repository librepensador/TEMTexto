beginfig(5);

%verbatimtex
%&latex
%\documentclass{amsart}
%\usepackage[spanish]{babel}
%\begin{document}
%etex



u=1cm;
pair o,p[],t,x,y,z;
path q[];

o=(0,0);

%---- los ejes coordenados---%

x=(0,1.5u);
y=(-u,-u);
z=(2u,0);

t=dir(angle(y));

label.rt(btex x etex,x);
label.llft(btex y etex,y);
label.lrt(btex z etex,z);



%---las placas ---% 
h=0.5u;
l1=1.5u;
l2=u;

p0=o;
p1=(l1,0);
p2=p1+l2*t;
p3=l2*t;


p4=(0,h);
p5=(l1,h);
p6=p1+l2*t+(0,h);
p7=l2*t+(0,h);


q1=p4--p5--p6--p7--cycle; 

q2=p0--p1--p2;
q3=p2--p3--p0; 


%--- los ejes dibujados ---% 

draw q1;
draw q2 cutbefore q1;
draw q3 cutafter q1;

draw o--z cutafter q1 dashed evenly withpen pencircle scaled 1;
draw o--x cutafter q1 dashed evenly withpen pencircle scaled 1;

drawarrow o--z cutbefore q1 withpen pencircle scaled 1;
drawarrow o--x cutbefore q1 withpen pencircle scaled 1;

drawarrow o--y cutbefore (p2--p2-(3u,0)) withpen pencircle scaled 1;
draw o--y cutafter (p2--p2-(3u,0)) dashed evenly withpen pencircle scaled 1;

%--- la medición ---% 

p10=p1+(0.2u,0);
p11=p10+(0,h);

draw p10--p11;
draw p10+(0.1u,0)--p10-(0.1u,0);
draw p11+(0.1u,0)--p11-(0.1u,0);

label.rt(btex $x$ etex,1/2[p10,p11]);


endfig;
end;