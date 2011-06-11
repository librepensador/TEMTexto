beginfig(13);

%verbatimtex
%&latex
%\documentclass{amsart}
%\usepackage[spanish]{babel}
%\begin{document}
%etex


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

q1=p0--o--p1;

drawarrow (subpath (0,0.3*length (q1)) of q1);
drawarrow (subpath (0,0.8*length (q1)) of q1);
draw (subpath (0,1*length (q1)) of q1);

draw o withpen pencircle scaled 3;

label.lrt(btex i\'on etex,o);



endfig;
end;