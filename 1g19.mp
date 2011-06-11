beginfig(19);

verbatimtex
%&latex
\documentclass{amsart}
\usepackage[spanish]{babel}
\begin{document}
etex


u=1cm;
pair x,y,z,o,p[],t;
path q[];

% ----- Sistema coordenado ----- %
o=(0,0);
z=(0,3u);
y=(3u,-0.5u);
x=(-3u,-0.5u);

drawarrow o--x withpen pencircle scaled 1; 
drawarrow o--y withpen pencircle scaled 1; 
drawarrow o--z withpen pencircle scaled 1; 

label.lft(btex $x$ etex, 1[o,x]);
label.rt(btex $y$ etex, 1[o,y]);
label.lft(btex $z$ etex, 1[o,z]);

%--- Definición de puntos ---%
t=dir(215);
p0=(0,2.5u);
p1=p0+2u*t;
p2=p1-p0;

draw p0--p1--p2--o;

p4=1u*dir(110);
p5=p4+0.6u*dir(angle(p4));
p3=1u*dir(angle(p4)+35);
p6=p3+0.6u*dir(angle(p3));
p7=2/3p4;
p8=2/3p3;


q1=p6{dir(angle(p6)-90)}..p5{dir(angle(p5)-90)}--p4{dir(angle(p4)+90)}..p3{dir(angle(p3)+90)}--cycle;

draw q1;
fill q1 withcolor 0.8*white;

draw o--p4 dashed evenly;
draw o--p3 dashed evenly;

%--- vectores ---% 

drawarrow (1/2[p5,p3]){dir(25)}..1/2[p5,p3]+(2u,0.5u){dir(0)};
label.rt(btex $d\mathbf{S}=r\,dr\,d\theta\,\boldsymbol{\hat{\varphi}}$ etex,1/2[p5,p3]+(2u,0.5u));

drawarrow  (1/2[p6,p3]-(u,0.5u)){dir(0)}..(1/2[p6,p3]){dir(35)};
label.lft(btex $rd\theta$ etex,(1/2[p6,p3]-(u,0.5u)));

drawarrow (length(p7)*dir(angle(p7)-40)){dir(angle(p7)+50)}..p7{dir(angle(p7)+90)};
drawarrow (length(p8)*dir(angle(p8)+40)){dir(angle(p8)-50)}..p8{dir(angle(p8)-90)};
label.bot(btex $d\theta$ etex,(length(p7)*dir(angle(p7)-40)));

p9=u*dir(angle(p2));
p10=u*dir(angle(x));

drawarrow p10{dir(angle(p10)+90)}..p9{dir(angle(p9)+90)};
label.llft(btex $\phi_0$ etex,p10);

%--- vector unitario ---% 
p20=1/2[p6,p4];
p21=1/2[p3,p5];
p22=1/2[p20,p21];

p23=p22+u*dir(angle(y));

label.urt(btex $\boldsymbol{\hat{\varphi}}$ etex,p23);

drawarrow p22--p23 withpen pencircle scaled 1;



% --- el engaño para que quepa en la tabla ---% 

draw (0,3.2u) withcolor white;


endfig;
end;