beginfig(3);

verbatimtex
%&latex
\documentclass{amsart}
\usepackage[spanish]{babel}
\begin{document}
etex

u=1cm;
pair p[],o,des;
path q[];

o=(0,0);

%--- El volumen ---% 

r=u;
des=u*dir(110);

%--- lsa superficies superiores e inferiores ---%
q0=fullcircle xscaled 2r yscaled 0.5r;
q1=q0 rotated (angle(des)-90);
q2=q1 shifted des;
q3=q1 shifted (-des);

draw q3 dashed evenly;
draw q2;
draw ((q0) cutafter (o--(-10u,0))) rotated (angle(des)-90) dashed evenly;
draw ((q0) cutbefore (o--(-10u,0))) rotated (angle(des)-90);

%--- sup laterales ---%

p0=((q0) intersectionpoint (o--(-10u,0))) rotated (angle(des)-90);
p1=((q0) intersectionpoint (o--(10u,0))) rotated (angle(des)-90);

p2=p0+des;
p3=p1+des;

p4=p0-des;
p5=p1-des;

draw p0--p2;
draw p1--p3;
draw p0--p4 dashed evenly;
draw p1--p5 dashed evenly;

%--- los normales ---% 

p10=o+des;
p11=p10+0.5des;
drawarrow p10--p11;
label.urt(btex $\mathbf{\hat{n_2}}$ etex,p11);

p12=o-des;
p13=p12-0.5des;
drawarrow p12--p13 dashed evenly;
label.llft(btex $\mathbf{\hat{n_1}}$ etex,p13);

%--- las marcaciones ---% 

label.lft(btex \small{$S$} etex,o);
label.lft(btex \small{$S_2$} etex,p10);
label.lft(btex \small{$S_1$} etex,p12);

p15=1/2[p0,p2];
p16=1/2[p0,p4];
p17=p0+2u*dir(angle(des)+90);

label.lft(btex $S_{LAT}$ etex,p17);
drawarrow p17--p16;
drawarrow p17--p15;

%--- la manta ---% 

%p20=(-2.5u,0);
%p21=0.8*(u,3u);
%p22=(4u,-u);5p23=(-0.5u,-3u);

%q5=p20{dir(70)}..{dir(10)}p21{dir(-20)}..{dir(-50)}p22{dir(200)}..{dir(260)}p23{dir(135)}..{dir(165)}p20;

p20=1.1*(-2.5u,0);
p23=p20+(2.3u,-3u);
p30=1.1*(3u,2.2u);
p21=p20+p30;
p22=p23+p30;

q5=p20{dir(-30)}..{dir(-70)}p23;
q6=p22{dir(110)}..{dir(150)}p21;

draw q5{dir(50)}..{dir(10)}q6{dir(190)}..{dir(230)}q5;

label.ulft(btex (2) etex,0.9*p22);
label.bot(btex (1) etex,p22);

p25=0.8*(1/2[p21,p22]);
p26=p25+(u,u);
drawarrow p26{dir(180)}..{dir(270)}p25;
label.rt(btex Interfase etex,p26);

endfig;
end;