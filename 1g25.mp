beginfig(25);

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
u1=((xpart oo / 6),(ypart oo / 6));

%--- vectores principales ---%
p1=oo{dir(250)}..u1;
p2=oo{dir(20)}..u2;
p3=oo{dir(110)}..u3;

drawarrow p1 withpen pencircle scaled 0.5;
drawarrow p2 withpen pencircle scaled 0.5;
drawarrow p3 withpen pencircle scaled 0.5;

label.top(btex u$_3$ etex,u3);
label.top(btex u$_1$ etex,u1);
label.urt(btex u$_2$ etex,u2);

%--- vectores desplazados ---%
t0=3/4;

t2=t0*length(p2);
t3=t0*length(p3);

p222=subpath (0,t2) of p2 ;
p333=subpath (0,t3) of p3 ;

draw p222 withpen pencircle scaled 0.5;
draw p333 withpen pencircle scaled 0.5;
draw p222 shifted ((point(t3) of p3) - oo) withpen pencircle scaled 0.5;
draw p333 shifted ((point(t2) of p2) - oo) withpen pencircle scaled 0.5;

label.rt("c",(point(t3) of p3 shifted (point(t2) of p2) - oo));
draw (point(t3) of p3 shifted (point(t2) of p2) - oo) withpen pencircle scaled 3;

label.bot("b",(point(t2) of p2));
draw (point(t2) of p2) withpen pencircle scaled 3;

label.lft("a",oo);
draw oo withpen pencircle scaled 3;

label.lft("d",(point(t3) of p3));
draw (point(t3) of p3) withpen pencircle scaled 3;

label.rt(btex $C$ etex,(point(t3/2) of p3 shifted (point(t2) of p2) - oo));
draw (point(t3) of p3 shifted (point(t2) of p2) - oo) withpen pencircle scaled 3;


drawarrow subpath(0,1/3*length(p2)) of p2 withpen pencircle scaled 0.5;
drawarrow subpath(length(p3),1/3*length(p3)) of p3 withpen pencircle scaled 0.5;
drawarrow (subpath(0,1/3*length(p3)) of p3 shifted ((point(t2) of p2) - oo)) withpen pencircle scaled 0.5;
drawarrow (subpath(length(p2),1/3*length(p2)) of p2 shifted ((point(t3) of p3) - oo)) withpen pencircle scaled 0.5;


endfig;
end;