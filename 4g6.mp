beginfig(6);

u=1.5cm;
pair p[];
path q[];

%los ejes 

drawarrow (0,-2u)--(0,2u) withpen pencircle scaled 1;
label.urt("B",(0,2u));

drawarrow (-2u,0)--(2u,0)withpen pencircle scaled 1;
label.lrt("H",(2u,0));

%la curva

q1=(-1.5u,-u){dir(30)}..{dir(75)}(-0.5u,0){dir(75)}..{dir(0)}(1.5u,u){dir(210)}..{dir(255)}(0.5u,0){dir(255)}..{dir(180)}(-1.5u,-u);

draw q1 withpen pencircle scaled 1;
draw (0,u)--(1.5u,u) dashed evenly; %línea de referencia. 
label.lft(btex B$_{sat}$ etex,(0,u));

p1=((0,0)--(0,4u)) intersectionpoint (q1);
label.lrt(btex B$_y$ etex,p1);

p2=((0,0)--(-4u,0)) intersectionpoint (q1);
label.ulft(btex H$_c$ etex,p2);

%draw (p1+(0.1u,0))--(p1-(0.1u,0));
%draw (p2+(0,0.1u))--(p2-(0,0.1u));

draw p1 withpen pencircle scaled 3;
draw p2 withpen pencircle scaled 3;


endfig;
end;