beginfig(12);

verbatimtex
%&latex
\documentclass{amsart}
\usepackage[spanish]{babel}
\begin{document}
etex


u=1cm;
pair r,o,p[];
path q[];
numeric r;

o=(0,0);


%--- la trayectoria ---% 

p0=(-2u,0);
draw p0 withpen pencircle scaled 3;
label.bot(btex $e^-$ etex,p0);

p1=(0.5u,1.5u);

q1=p0{dir(0)}..{dir(45)}p1;

drawarrow (subpath (0,0.3*length (q1)) of q1);
drawarrow (subpath (0,0.8*length (q1)) of q1);
draw (subpath (0,1*length (q1)) of q1);

%--- los labels ---% 
p2=point (length (q1)) of q1;
label.rt(btex Trayectoria forzada por etex,p2);
label.rt(btex la existencia del i\'on. etex,p2+(0,-0.3u));

p3=(u,0);
draw p0--p3 dashed evenly; 
label.urt(btex Trayectoria rectil\'inea del electr\'on etex,p3+(0,0.27u));
label.urt(btex si no existiera el i\'on. etex,p3);



%--- el ión ---%
r=u;

q0=fullcircle scaled r;

for i=1 upto 100:
draw (q0 scaled (i/100)) withcolor (1-(i/100)*(i/100))*white;
endfor;

label(btex i\'on etex,o);




endfig;
end;