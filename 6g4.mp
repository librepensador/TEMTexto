beginfig(4);

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


%--- la manta ---% 

p20=1.1*(-2.5u,0);
p23=p20+(2.3u,-3u);
p30=1.1*(3u,2.2u);
p21=p20+p30;
p22=p23+p30;

q5=p20{dir(-30)}..{dir(-70)}p23;
q6=p22{dir(110)}..{dir(150)}p21;
q7=p23{dir(50)}..{dir(10)}p22;
q8=p21{dir(190)}..p20{dir(230)};

draw q5--q7--q6--q8;

label.ulft(btex (2) etex,0.9*p22);
label.bot(btex (1) etex,p22);

p25=0.9*(2/3[p21,p22]);
p26=p25+(u,u);
drawarrow p26{dir(180)}..{dir(270)}p25;
label.rt(btex Interfase etex,p26);


%--- la curva ---% 

p0=point 0.3 of (q7 shifted (-1.1u,1.5u));
p1=point 0.8 of (q7 shifted (-1.1u,1.5u));
q10=subpath (0.3,0.8) of (q7 shifted (-1.1u,1.5u));

draw q10; % withpen pencircle scaled 1;

h=u;

p2=p1+(0,h);
p3=p0+(0,h);

draw p1--p2;
drawarrow p2--1/4[p2,p3];
draw 1/4[p2,p3]--p3;
drawarrow p3--1/2[p3,p0];
draw 1/2[p3,p0]--p0;


p4=p1-(0,h);
p5=p0-(0,h);

draw p0--p5 dashed evenly;
drawarrow p5--1/4[p5,p4] dashed evenly;
draw 1/4[p5,p4]--p4 dashed evenly;
drawarrow p4--1/2[p4,p1];
draw 1/2[p4,p1]--p1 dashed evenly;

%--- los vectores ---% 

p6=point (0.5*length(q10)) of q10;

p7=p6+(0,1.3u);
drawarrow p6--p7 withpen pencircle scaled 1;
label.lft(btex $\mathbf{\hat{n}}$ etex,p7);

p8=p6+1.3u*dir(angle(1.1u,-1.5u));
drawarrow p6--p8 withpen pencircle scaled 1;
label.urt(btex $\mathbf{\hat{b}}$ etex,p8);

p9=1.3*u*dir(angle(p23-p22));
drawarrow p6--p9 withpen pencircle scaled 1;
label.lft(btex $\mathbf{\hat{t}}$ etex,p9);

%--- el nombre de las curvas ---% 
label.top(btex $L_2$ etex,1/4[p2,p3]+(0,0.1u));
label.lft(btex $L_{LAT}$ etex,1/2[p3,p0]);
label.top(btex $L$ etex,point (3/4*length(q10)) of q10);
label.bot(btex $L_1$ etex,1/4[p5,p4]-(0,0.1u));

%--- la altura ---% 

p10=p2+0.2u*dir(angle(p22-p23));
p11=p10-(0,2h);

draw p10--1/2[p10,p11];
draw 1/2[p10,p11]--p11 dashed evenly;

draw p10+0.1u*dir(angle(p23-p22))--p10-0.1u*dir(angle(p23-p22));
draw p11+0.1u*dir(angle(p23-p22))--p11-0.1u*dir(angle(p23-p22));
label.rt(btex $\Delta h$ etex,1/2[p10,p11]);

endfig;
end;