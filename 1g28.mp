beginfig(28);

u=1cm;
pair x,y,z,o,p[],oo;
path q[];


%--- nuestro sistema coordenado ---%

o=(0,0);
z=(0,3.5u);
y=(3u,-u);
x=(-3u,-u);

drawarrow o--x; 
drawarrow o--y; 
drawarrow o--z; 

label.lrt(btex $x$ etex, 1[o,x]);
label.llft(btex $y$ etex, 1[o,y]);
label.lrt(btex $z$ etex, 1[o,z]);

% --- los puntitos ---% 

p0=(0.5u,2u);
p1=(3u,0.5u);
p2=p1-(2u,2u);
p3=p0-(2u,2u);

%---  La superficie ---%
q1=p0{dir(10)}..{dir(0)}p1;
q2=p1--p2;
q3=p2{dir(180)}..{dir(190)}p3;
q4=p3--p0;

draw q1;
draw q2;
draw q3;
draw q4;

%--- el corte de la superficie ---%
q5=buildcycle(q1,q2,q3,q4);
fill q5 withcolor 0.9*white;

q6=q1 shifted (-0.5u,-0.5u);
q9=q4 shifted (0.25u,-0.25u);
q8=q3 shifted (0.5u,0.5u);
q7=q2 shifted (-0.75u,0.75u);

q10=buildcycle(q6,q7,q8,q9);
draw q10;

for i=1 upto 7:
draw (((q1 shifted ((-0.5u,-0.5u)-(0.125u*i,0.125u*i))) cutafter q10) cutbefore (q4 shifted (0.25u,-0.25u)));
endfor;

for i=1 upto 7:
draw (((q2 shifted ((-0.75u,0.75u)+(-0.125u*i,0.125u*i))) cutbefore q10) cutafter (q8));
endfor;

drawarrow subpath (0,1/16*length(q10)) of q10;
drawarrow subpath (1/16*length(q10),5/16*length(q10)) of q10;
drawarrow subpath (6/16*length(q10),9/16*length(q10)) of q10;
drawarrow subpath (10/16*length(q10),13/16*length(q10)) of q10;


%--- El zoom a la superficie ---%

q11=fullcircle scaled 0.6u shifted (0.475u,0.75u);

draw q11;

drawarrow (0.475u,0.75u)--(3.5u,0.75u);

%--- las líneas dentro del zoom ---% 
oo=(5u,0.8u);

q12=fullcircle scaled 1.9u shifted oo;
draw q12;

q13=oo--(oo+(2u,2u));
q14=q13 shifted (0.5u,-0.5u);
q15=q13 shifted (-0.5u,0.5u);
q16=q15 shifted (-2u,-2u);
q17=q13 shifted (-2u,-2u);
q18=q14 shifted (-2u,-2u);

q19=oo{dir(140)}..(oo+(-u,0.65u)){dir(170)};
q20=q19 shifted (0.25u,0.25u) cutafter q12;
q21=q19 shifted (-0.25u,-0.25u) cutafter q12;
q22= ((oo+(0.25u,0.25u))--(oo+(2.25u,-1.75u)) cutafter q12);
q23= ((oo+(-0.25u,-0.25u))--(oo+(1.75u,-2.25u)) cutafter q12);

draw q21;
draw q20;
draw q22;
draw q23;

draw q13 cutafter q12;
draw q14 cutafter q12;
draw q15 cutafter q12;
draw q16 cutbefore q12;
draw q17 cutbefore q12;
draw q18 cutbefore q12;

q24=buildcycle(q13,q22,q14,q18,q23,q17);
fill q24 withcolor 0.9*white;
draw q24;

drawarrow subpath (-2/16*length(q24),0) of q24;
drawarrow subpath (1/16*length(q24),3.5/16*length(q24)) of q24;
drawarrow subpath (4/16*length(q24),8/16*length(q24)) of q24;
drawarrow subpath (10/16*length(q24),11.5/16*length(q24)) of q24;

label(btex $S_l$ etex,(oo+(0.25u,-0.25u)));
label.lft(btex $_2$ etex,(oo+(-0.25u,-0.25u)));
label.top(btex $_1$ etex,(oo+(0.25u,0.25u)));
label.rt(btex $C_l$ etex,(oo+(0.3u,0.25u)));


endfig;
end;