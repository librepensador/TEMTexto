beginfig(2);

verbatimtex
%&latex
\documentclass{amsart}
\usepackage[spanish]{babel}
\begin{document}
etex

u=1cm;
pair p[],o;
path q[];

o=(0,0);

l=1.5u;
l2=u;

%--la curva del cambio de medios ---% 

q0=(-l,0){dir(30)}..{dir(-30)}o{dir(-30)}..{dir(30)}(l,0);

draw q0; 

%--- los límites para los campos ---% 

q1=(-2l,-l2)--(2l,-l2); 
q2=(-2l,-0.5l2)--(2l,-0.5l2); 

q3=(-3l,l2)--(2l,l2)--(2l,0);
q4=(-l,l2)--q0;
q5=(-2l,0.5l2)--(2l,0.5l2);

%--- el vector del medio 1 ---% 

a=6;
b=130;

for i=0 upto a:
p[i]=((-l+2l/a*i,-2l2)--(-l+2l/a*i,l2)) intersectionpoint (q0--(10u,0));
drawarrow ((((-l+2l/a*i,-2l2)--(-l+2l/a*i,l2)) cutbefore (q1)) cutafter q2) withcolor 0.5*white;
draw ((((-l+2l/a*i,-2l2)--(-l+2l/a*i,l2)) cutbefore (q2)) cutafter (q0--(10u,0))) withcolor 0.5*white;

drawarrow ((p[i]--p[i]+10u*dir(b)) cutafter (q5)) withcolor 0.5*white;
draw (((p[i]--p[i]+10u*dir(b)) cutbefore (q5)) cutafter (q3))  withcolor 0.5*white;
endfor;

%--- el normal ---% 

p10=o+u*dir(60);
drawarrow o--p10;

label.top(btex $\mathbf{\hat{n}}$ etex,p10);

label.lft(btex Medio 1 etex,(-l,-0.5l2));
label.lft(btex Medio 2 etex,(-1.4l,0.5l2));

label.rt(btex $\mathbf{A_1}$ etex,(l,-0.5l2));
label.rt(btex $\mathbf{A_2}$ etex,(l,0.5l2));



endfig;
end;