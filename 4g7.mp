beginfig(7);

%verbatimtex
%&latex
%\documentclass{amsart}
%\usepackage[spanish]{babel}
%\begin{document}
%etex

u=1.5cm;
pair p[],o[],t[];
path q[];
numeric l[];


%--- los centros ---%
o1=(-1.5u,0);
o2=(1.5u,0);

%--- las bolas ---%
r=u;
q1=fullcircle scaled 2r;

for i=1 upto 100:
draw (q1 scaled (i/100) shifted o1) withcolor (1-(i/100)*(i/100))*white;
draw (q1 scaled (i/100) shifted o2) withcolor (1-(i/100)*(i/100))*white;
endfor;

draw o1 withpen pencircle scaled 4;
draw o2 withpen pencircle scaled 4;

%--- los nombres y detalles---%

p1=o1+(-1u,1u);
p11=1/2[o1,p1];
drawarrow p1..p11+3*dir(angle(p1-p11));
label.lft(btex Nube de  etex,p1);
label.lft(btex electrones etex,p1+(0,-0.2u));

p111=o1+(-1.3u,0);
drawarrow p111--o1+3*dir(angle(p111-o1));
label.lft(btex N\'ucleo etex,p111);

p2=o2+(1u,1.4u);
drawarrow p2..o2+3*dir(angle(p2-o2));
label.top(btex CEN etex,p2);

p22=o2+(-0.5u,0);
p222=p22+(0,1.4u);

draw p22 withpen pencircle scaled 4;
drawarrow p222--p22+3*dir(angle(p222-p22));
label.top(btex CEP etex,p222);

%--- el campo eléctrico ---% 
l0=2.5u;
l1=0.5u;

for i=0 upto 4:
drawarrow (0.5l0,-r+0.5*i*r)+o2--(0.5l0-l1,-r+0.5*i*r)+o2;
drawarrow (0.5l0-l1,-r+0.5*i*r)+o2--(-0.5l0+l1,-r+0.5*i*r)+o2;
draw (-0.5l0+l1,-r+0.5*i*r)+o2--(-0.5l0,-r+0.5*i*r)+o2;
endfor;

label.rt(btex E etex,o2+(0.5l0,-r));


endfig;
end;