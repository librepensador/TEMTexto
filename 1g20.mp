beginfig(20);

u=1cm;
pair x,y,z,o,p[];
numeric t;
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

%--- la manta ---%
p0=(-0.5u,2u);
p1=(3u,0.5u);
p2=p1-(u,u);
p3=p0-(u,u);

q1=p0{dir(0)}..p1{dir(0)}--p2{dir(180)}..p3{dir(180)}--cycle; 
fill q1 withcolor 0.8*white;

%--- los vectores ---%
p4=1/4[p0,p2];
p5=3/4[p0,p2];
p6=p4+length(p5-p4)*dir(angle(p5-p4)+90);
t=1/5;
p8=t[p4,p6];
p10=t[p4,p5];
p9=p10+(p8-p4);


draw p4 withpen pencircle scaled 3;
draw p5 withpen pencircle scaled 3;
draw p6 withpen pencircle scaled 3;
draw 1/2[p4,p9] withpen pencircle scaled 1;
draw p8--p9--p10;
drawarrow p4--p5;
drawarrow p4--p6;


label.llft(btex $d$r etex,1/2[p4,p5]);
label.lft(btex $P$ etex,p4);
label.rt(btex $Q$ etex,p5);
label.rt(btex $\nabla\phi$ etex,p6);

endfig;
end;