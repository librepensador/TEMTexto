beginfig(4);


u=1cm; %unidad de escalamiento
pair p[],o;
path q[];
o=(2u,-u);
numeric h,d; %distancias para líneas


%--- la manta ---%

q0=(-4u,-2u){dir(0)}..{dir(0)}(-u,-u);
draw q0;
drawarrow (subpath (0,0.5) of (q0) );

for i=1 upto 3:
q[i]=q0 rotated (-14*i);
draw q[i];
drawarrow (subpath (0,0.5) of (q[i]));
endfor;

%--- las líneas de velocidades el zoom ---%

draw (fullcircle scaled 0.7u) shifted (-3u,-0.15u);

r=2.2u;
q5=fullcircle scaled (2r) shifted o;
draw q5;

q6=o+(0,-r)..o+(r,0)..o+(0,r);
q7=o+(0,-r)..o-(r,0)..o+(0,r);

drawarrow (-3u,0){dir(45)}..{dir(-45)}(point (3) of q5);

h=2u;
d=0.5u;

for i=-4 upto 4:
drawarrow ( ((-10u,d*i)+o--o+(0.7u,d*i)) cutbefore(q7) );
draw ( ((0.7u,d*i)+o--o+(10u,d*i)) cutafter(q6) );
endfor;

drawarrow o+(0.7u,u){dir(90)}..{dir(0)}o+(2u,2u);
label.rt(btex Campo de etex,o+(2u,2u));
label.rt("velocidades",o+(2u,1.5u));


%--- la superficie delta S ---%

q8=(-0.9u,-0.8u)+o--(-0.5u,0.8u)+o;
draw q8 withpen pencircle scaled 1.3;

p0=point 0.5 of q8; 
drawarrow p0--(p0+u*dir(angle((0.4u,1.6u))-90));
label.rt(btex $\hat{n}$ etex,(p0+u*dir(angle((0.4u,1.6u))-90)));

p1=point 0.3 of q8;
drawarrow p1-(2u,1.3u){dir(90)}..{dir(0)}p1;
label.bot(btex Superficie $\Delta S$ etex,p1-(2u,1.3u));

p2=point 0 of q8;
p3=point 1 of q8;
draw p2--p2+(2u,0)--p3+(2u,0)--p3 dashed evenly;


endfig;
end;