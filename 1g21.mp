beginfig(21);

u=1cm;
pair x,y,z,o,p[];
numeric t;
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

%--- las mantas ---%
p0=(-2.5u,u);
p1=(1u,-0.5u);
p2=p1-(u,u);
p3=p0-(u,u);

p20=(1.5u,0.5u);
p7=p3+p20;
p8=p0+p20;
p9=p1+p20;
p10=p2+p20;


q1=p0{dir(0)}..p1{dir(0)}--p2{dir(180)}..p3{dir(180)}--cycle; 
fill q1 withcolor 0.8*white;

q2=p8{dir(0)}..p9{dir(0)}--p10{dir(180)}..p7{dir(180)}--cycle; 
fill q2 withcolor 0.6*white;


%--- los vectores ---%
p4=1/2[p0,p2];
p5=1/4[p8,p10];
p6=3/4[p8,p10];

draw p4 withpen pencircle scaled 3;
draw p5 withpen pencircle scaled 3;
draw p6 withpen pencircle scaled 3;
drawarrow p4--p5;
drawarrow p4--p6;

label.ulft(btex $d$r etex,1/2[p4,p5]);
label.bot(btex $d$r$'$ etex,1/2[p4,p6]);

label.lft(btex $P$ etex,p4);
label.rt(btex $Q$ etex,p5);
label.rt(btex $Q'$ etex,p6);

endfig;
end;