beginfig(1);

u=0.6cm;
pair x,y,z,o,p[],oo;
path q[];


%--- nuestro sistema coordenado ---%

o=(0,0);
z=(0,3.5u);
y=(3u,-0.8u);
x=(-3u,-0.8u);

drawarrow o--x; 
drawarrow o--y; 
drawarrow o--z; 

label.lrt(btex $x$ etex, 1[o,x]);
label.llft(btex $y$ etex, 1[o,y]);
label.lrt(btex $z$ etex, 1[o,z]);

% --- el vector ---% 

p0=(2u,2u);
draw p0 withpen pencircle scaled 3;
 
drawarrow o--p0;
label.ulft(btex r$_0$ etex,1/2*p0);
label.rt(btex q$_0$ etex,p0);



endfig;
end;