beginfig(3);

vardef pot primary x = (x*x*x*x) enddef;
vardef sqr primary x = (x*x) enddef;


u=1cm; %unidad de escalamiento
pair x,y,z,o,p[],r[],m[],n[],v[];
numeric t,b,d[],dmin;
path q[],s[];

% ----- Sistema coordenado ----- %
o=(0,0);    %el origen
z=(0,3u);   %ejes coordenados
y=(3u,-u);
x=(-3u,-u);

drawarrow o--x withpen pencircle scaled 1; 
drawarrow o--y withpen pencircle scaled 1; 
drawarrow o--z withpen pencircle scaled 1; 

label.lft(btex $x$ etex, 1[o,x]);
label.rt(btex $y$ etex, 1[o,y]);
label.lft(btex $z$ etex, 1[o,z]);

%--- la manta ---%
b=5; %cantidad de líneas y largo de la manta

p0=(-0.5u,2u); %puntos extremos de la manta
p1=(3u,0.5u);
p3=p0 shifted (-(b+1)*0.4u,-(b+1)*0.4u);
p2=p1 shifted (-(b+1)*0.4u,-(b+1)*0.4u);


%q2=(p1{dir(180)}..p0{dir(180)}) shifted (-(b+1)*0.4u,-(b+1)*0.4u); %línea extremo horizontal de la manta

q1=p0{dir(0)}..p1{dir(0)}; % línea extremo horizontal de la manta
q2=p2{dir(180)}..p3{dir(180)};

q3=q1--q2--cycle; %perímetro de la manta
fill q3 withcolor white; %borrar lo que esté adentro de la manta. 
draw q3 withcolor 0.4*white; %pintar el perímetro de la manta


for i=1 upto b: %las lineas de la manta, al igual que los vectores
q[i+3]=(p0{dir(0)}..p1{dir(0)}) shifted (-i*0.4u,-i*0.4u);
draw (q[i+3]) withcolor 0.6*white;
drawarrow (((p0{dir(0)}..p1{dir(0)}) shifted (-i*0.4u,-i*0.4u)) cutafter (point (0.5) of ((p0{dir(0)}..p1{dir(0)}) shifted (-i*0.4u,-i*0.4u)))) withcolor 0.7*white;
endfor;

%--- efecto de curvatura sobre la manta ---%
r1=dir(angle(p1-p0)); %la dirección recta de una de las líneas extremo de la manta. 
r2=(xpart r1,-ypart r1);

d0=0;
dmin=0.04u;
m0=p0;
n0=p0;
for i=1 upto 29:
m[i]=dmin*r1+m[i-1]+d[i-1]*r1; %punto sobre recta p0--p1.
n[i]=((m[i]-3u*r2)--(m[i]+3u*r2)) intersectionpoint (q1);
d[i]=pot(31.416/180*angle(n[i]-n[i-1]))/100;
s[i]=(n[i]--(n[i]+p3-p0)); 
draw s[i] withcolor 0.6*white;
endfor;

%--- la curva esa---%

%for i=4 upto 8:
%v[i]=(q[i]) intersectionpoint (s[sqr(i)-5(i-1)]);
%endfor;

v[1]=(q4) intersectionpoint (s1);
v[2]=(q5) intersectionpoint (s15);
v[3]=(q6) intersectionpoint (s17);
v[4]=(q7) intersectionpoint (s19);
v[5]=(q8) intersectionpoint (s28);

draw v1..v2..v3..v4..v5;

label.rt(btex $C$ etex,v2);

%---el vector---%

drawarrow v3--(v3+u*dir(angle(v4-v2)+90));
label.rt(btex $\hat{t}$ etex,v3+u*dir(angle(v4-v2)+90));


endfig;
end;