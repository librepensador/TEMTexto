beginfig(1);

u=1.5cm;
pair p[],r[],x,y,z,o;
path q[];



%--- la hélice ---% 

h=0.3u; %la altura separación.

p0=(0,0);
p1=(0,h);
p2=p1+(-u,0);
p3=p1+(0,h);

q0=p0..p1..p2..p1..p3;
draw q0 yscaled 0.5 withpen pencircle scaled 1;

b=10; %número de espiras.
for i=1 upto b:
draw (q0 yscaled 0.5) shifted (0,0.5*i*h) withpen pencircle scaled 1;
endfor;

%--- el eje ---% 
d=0.3u;
draw ((0,-d)--(0,0.5*h*b+2d)) shifted (0.5*(xpart p2),0) dashed evenly;

%---- los ejes coordenados---%
o=(0.5*(xpart p2),h/2*(b+2)/2)+p0;
x=(-u,-0.5u)+o;
y=(u,-0.5u)+o;
z=(0,u)+o;

label.llft(btex x etex,x);
label.lrt(btex y etex,y);
label.urt(btex z etex,z);

drawarrow o--x withpen pencircle scaled 1;
drawarrow o--y withpen pencircle scaled 1;
drawarrow o--z withpen pencircle scaled 1;

%--- las medidas ---% 
l=0.2u;
a=-xpart p2;
p5=p0+(0,-l);
p6=p5+(-a,0);

draw p5--p6;
draw p5+(0,-0.1u)--p5+(0,0.1u);
draw p6+(0,-0.1u)--p6+(0,0.1u);
label.lrt(btex $2a$ etex,1/2[p5,p6]);

p7=point (length((q0 yscaled 0.5) shifted (0,0.5*5*h))) of ((q0 yscaled 0.5) shifted (0,0.5*5*h));
p8=point (length((q0 yscaled 0.5) shifted (0,0.5*6*h))) of ((q0 yscaled 0.5) shifted (0,0.5*6*h));

p9=p7+(0.5l,0);
p10=p8+(0.5l,0);

draw p9--p10;
draw p9+(-0.051u,0)--p9+(0.051u,0);
draw p10+(-0.051u,0)--p10+(0.051u,0);
label.rt(btex $2\pi a$ etex,1/2[p9,p10]);

%--- la flecha de infinito ---%

p15=z+(0,0.3u);
p16=p15+(0.2u,0);
p17=p16+(0,0.3u);
p18=p17+(0.15u,0);
p19=p15+(0,0.6u);
p22=p15+(-0.2u,0);
p21=p22+(0,0.3u);
p20=p21+(-0.15u,0);

q1=p15--p16--p17--p18--p19--p20--p21--p22--cycle;
draw q1;

q2=(q1 rotatedaround (o,180)) shifted(0,-0.1u);
draw q2;

endfig;
end;