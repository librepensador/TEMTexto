beginfig(16);

u=0.8cm;
pair x,y,z,o,p[],t;
path q[];

% ----- Sistema coordenado ----- %
o=(0,0);
z=(0,3u);
y=(3u,-u);
x=(-3u,-u);
t=dir(-40);

drawarrow o--x withpen pencircle scaled 1; 
drawarrow o--y withpen pencircle scaled 1; 
drawarrow o--z withpen pencircle scaled 1; 

label.lft(btex $x$ etex, 1[o,x]);
label.rt(btex $y$ etex, 1[o,y]);
label.lft(btex $z$ etex, 1[o,z]);

%--- Definición y gráficas de puntos y conexiones entre puntos---%

p1=1.5u*t;
p0=p1+(0,1.5u);
p2=p0-1.5u*t;

draw p0 withpen pencircle scaled 3;
draw p0--p1--o dashed evenly;
draw p0--(p0+0.5u*dir(angle(p0))) dashed evenly;

label.lrt("P",p0);

%--- Vector r=r0 ---%
drawarrow o--p0;
label.ulft(btex $r_0$ etex,1/2*p0);

%--- vector phi=phi_0 ---%
drawarrow (0.9u*dir(angle(x))){dir(angle(x)+120)}..(0.8u*dir(angle(p1))){dir(angle(p1)+45)};
label.urt(btex $\phi_0$ etex,(0,ypart p1));

%--- vector theta ---%
drawarrow (0,1.7u){dir(5)}..(p0+0.4u*dir(angle(p0))){dir(-50)};
label.rt(btex $\theta_0$ etex,(0.3u,1.3u));

endfig;
end;