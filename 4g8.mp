beginfig(8);

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
o1=(-2u,0);
o2=(-u,0);
o3=(0.5u,0);
o4=(2u,0);
o5=(o4+(o1-o2));

%--- las bolas ---%
r13=0.1u;
r24=0.5u;

q1=fullcircle scaled 2r13;
q3=fullcircle scaled 2r13;

q2=fullcircle scaled 2r24;
q4=fullcircle scaled 2r24;

q5=q1 shifted o5;
draw q5 dashed evenly;

for i=1 upto 100:
draw (q1 scaled (i/100) shifted o1) withcolor (1-(i/100)*(i/100))*white;
draw (q2 scaled (i/100) shifted o2) withcolor (1-(i/100)*(i/100))*white;
draw (q3 scaled (i/100) shifted o3) withcolor (1-(i/100)*(i/100))*white;
draw (q4 scaled (i/100) shifted o4) withcolor (1-(i/100)*(i/100))*white;
endfor;


%--- los nombres y detalles---%

p0=1/2[o1,o2]+(0,r13+r24);
label.top(btex Sin campo etex,p0);

p1=1/2[o3,o4]+(0,r13+r24);
label.top(btex Con campo etex,p1);

label(btex CL$^-$ etex,o2);
label.ulft(btex H$^+$ etex,o1);

label(btex CL$^-$ etex,o4);
label.ulft(btex H$^+$ etex,o3);

%--- el campo eléctrico ---%
p2=o4-0.5(u,0);
l0=2.5u;
l1=0.5u;

for i=0 upto 4:
drawarrow (0.5l0,-r24+0.5*i*r24)+p2--(0.5l0-l1,-r24+0.5*i*r24)+p2 withcolor 0.5*white;
drawarrow (0.5l0-l1,-r24+0.5*i*r24)+p2--(-0.5l0+l1,-r24+0.5*i*r24)+p2 withcolor 0.5*white;
draw (-0.5l0+l1,-r24+0.5*i*r24)+p2--(-0.5l0,-r24+0.5*i*r24)+p2 withcolor 0.5*white;
endfor;

label.rt(btex E etex,p2+(0.5l0,-r24)) withcolor 0.5*white;

%--- las líneas de medición ---%

p3=(0,-r24-0.3u);
p4=p3-(0,0.3u);

p5=o1+p3;
p6=o2+p3;
p7=o3+p3;
p8=o4+p4;
p9=o5+p3;
p10=o3+p4;

draw p5--p6;
draw p5+(0,0.1u)--p5+(0,-0.1u);
draw p6+(0,0.1u)--p6+(0,-0.1u);
label.bot(btex $d$ etex,1/2[p5,p6]);

draw p7--p9;
draw p7+(0,0.1u)--p7+(0,-0.1u);
draw p9+(0,0.1u)--p9+(0,-0.1u);
label.bot(btex $\Delta d$ etex,1/2[p7,p9]);

draw p8--p10;
draw p8+(0,0.1u)--p8+(0,-0.1u);
draw p10+(0,0.1u)--p10+(0,-0.1u);
label.bot(btex $d+\Delta d$ etex,1/2[p8,p10]);

endfig;
end;