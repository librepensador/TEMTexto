beginfig(22);

u=1cm;
pair o,x,y,z,oo,u[];
path p[];
numeric t[];

%--- sistema coordenado ---%
o=(0,0);
z=(0,3.5u);
y=(3u,-0.7u);
x=0.5*(-3u,-0.7u);

drawarrow o--x; 
drawarrow o--y; 
drawarrow o--z; 

label.lrt(btex $x$ etex, 1[o,x]);
label.llft(btex $y$ etex, 1[o,y]);
label.lrt(btex $z$ etex, 1[o,z]);


% ---nuevo sistema--- %

oo=(1.2u,0.8u);

u3=(xpart oo + 0.25u,ypart oo + 2u);
u2=(xpart oo + 2u,ypart oo - 0.25u);
u1=((xpart oo / 10),(ypart oo / 10));

%--- vectores principales ---%
p1=oo{dir(250)}..u1;
p2=oo{dir(20)}..u2;
p3=oo{dir(110)}..u3;

drawarrow p1 withpen pencircle scaled 1;
drawarrow p2 withpen pencircle scaled 1;
drawarrow p3 withpen pencircle scaled 1;

label.top(btex u$_3$ etex,u3);
label.bot(btex u$_1$ etex,u1);
label.urt(btex u$_2$ etex,u2);

%--- vectores desplazados ---%
t0=4/5;
t1=t0*length(p1);
t2=t0*length(p2);
t3=t0*length(p3);

p111=subpath (0,t1) of p1;
p222=subpath (0,t2) of p2;
p333=subpath (0,t3) of p3;

draw p111;
draw p222; 
draw p333; 

draw p111 shifted ((point(t2) of p2) - oo);
draw p111 shifted ((point(t3) of p3) - oo);
draw p111 shifted ((point(t2) of p2) - oo + (point(t3) of p3) - oo);

draw p222 shifted ((point(t1) of p1) - oo);
draw p222 shifted ((point(t3) of p3) - oo);
draw p222 shifted ((point(t1) of p1) - oo + (point(t3) of p3) - oo);

draw p333 shifted ((point(t1) of p1) - oo);
draw p333 shifted ((point(t2) of p2) - oo);
draw p333 shifted ((point(t1) of p1) - oo + (point(t2) of p2) - oo);

label.urt(btex $h_1\Delta u_1$ etex,u3+(0.5u,-0.3u));
label.rt(btex $h_3\Delta u_3$ etex,u2+(-0.5u,u));
label.rt(btex $h_2\Delta u_2$ etex,u2-(0.8u,0.4u));


endfig;
end;