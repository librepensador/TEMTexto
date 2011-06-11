beginfig(17);

verbatimtex
%&latex
\documentclass{amsart}
\usepackage[spanish]{babel}
\begin{document}
etex


u=0.8cm;
pair x,y,z,o,p[];
numeric t[];
path q[];

% ----- Sistema coordenado ----- %
o=(0,0);
z=(0,3u);
y=(3u,-u);
x=(-3u,-u);

drawarrow o--x withpen pencircle scaled 1; 
drawarrow o--y withpen pencircle scaled 1; 
drawarrow o--z withpen pencircle scaled 1; 

label.lft(btex $x$ etex, 1[o,x]);
label.rt(btex $y$ etex, 1[o,y]);
label.lft(btex $z$ etex, 1[o,z]);

%--- La esfera --- %
r=1.5*u;
R=2r;
q1=fullcircle scaled R;
draw q1;


%--- Definición de puntos ---%
p0=(0,1/3*r);
p1=(0,2/3*r);
p2=(p1--(p1+(5u,0))) intersectionpoint (q1);
p3=(p0--(p0+(8u,0))) intersectionpoint (q1);
p4=(1/3*r,0);
p5=(2/3*r,0);

%--- óvalos de referencia ---%

q2=(fullcircle xscaled (2*xpart p2) yscaled (1/3*r)) shifted p1;
q3=(fullcircle xscaled (2*xpart p3) yscaled (1/3*r)) shifted p0;
q4=(fullcircle xscaled (2*xpart p4) yscaled R);
q5=(fullcircle xscaled (2*xpart p5) yscaled R);

%--- definición de puntos de intersección ---%

p8= (q4 cutafter (o--(0,10u))) intersectionpoint (q3 cutbefore (o--(0,10u)));
p9= (q5 cutafter (o--(0,10u))) intersectionpoint (q3 cutbefore (o--(0,10u)));
p6= (q4 cutafter (o--(0,10u))) intersectionpoint (q2 cutbefore (o--(0,10u)));
p7= (q5 cutafter (o--(0,10u))) intersectionpoint (q2 cutbefore (o--(0,10u)));

q88=buildcycle(q4 cutafter (o--(0,10u)),q2 cutbefore (o--(0,10u)),q5 cutafter (o--(0,10u)),q3 cutbefore (o--(0,10u)));
draw q88;
fill q88 withcolor 0.8*white;

draw p1--p7 dashed evenly;
draw p1--p6 dashed evenly;
draw o--p7 dashed evenly;
draw o--p9 dashed evenly;

%--- dS y rdtheta y otro vector ---% 
drawarrow (1/2[p8,p7])--(1/2[p8,p7]+(1u,-0.3u));
p10=(o--10u*dir(angle(1/2[p7,p9]))) intersectionpoint q5;
drawarrow p10..(p10+(u,u)){dir(0)};

label.rt(btex $rd\theta$ etex,(p10+(u,u)));



%label.rt(btex $d\mathbf{S}=r^2\sen\theta d\theta d\phi\,\mathbf{\hat{r}}$ etex,(1/2[p8,p7]+(1.3u,-0.3u)));
label.rt(btex $d\mathbf{S}=r^2\sen\theta d\theta d\phi\,\mathbf{\hat{r}}$ etex,(1/2[p6,p9]+(0.8u,-0.3u)));



   %otro vector% 

p20=1/2[p8,p9];

drawarrow p20--p20+((1.3u,-0.8u));
label.rt(btex $r$sen$\theta d\theta$ etex,(p20+(1.3u,-0.8u)));

%--- vector r0 ---%
drawarrow o--r*dir(225);
label.llft(btex $r_0$ etex,r*dir(225));


%--- vector dphi---% 
q6=(q2 shifted -p1) scaled 0.8 shifted p1;

t1= xpart ((q6) intersectiontimes (p1--p6));
t2= xpart ((q6) intersectiontimes (p1--p7));
t3= xpart (q6 intersectiontimes (p1--p1-(2u,5u)));
t4= xpart (q6 intersectiontimes (p1--p1+(5u,2u)));

drawarrow subpath (t3,t1) of q6;
drawarrow (q6 intersectionpoint (p1--p1+(5u,0)))--(q6 intersectionpoint (p1--p7));
label.lft(btex $d\phi$ etex,(q6 intersectionpoint (p1--p1+(-0.1u,-0.4u))));

%--- vectores unitarios ---% 
p30=1/2[p6,p9];
p31=p30+u*dir(angle(p30)); 

drawarrow p30--p31 withpen pencircle scaled 1; 
label.rt(btex $\mathbf{\hat{r}}$ etex,p31);


% --- el engaño para que quepa en la tabla ---% 

draw (0,4u) withcolor white;


endfig;
end;