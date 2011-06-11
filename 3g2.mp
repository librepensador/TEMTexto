beginfig(2);

u=1cm; %unidad de escalamiento
pair x,y,z,o,p[];
numeric t,b;
path q[];

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
p0=(-0.5u,2u); %puntos extremos de la manta
p1=(3u,0.5u);
p2=p1-(1.5u,1.5u);
p3=p0-(1.5u,1.5u);

b=5; %cantidad de líneas y largo de la manta

q2=(p1{dir(180)}..p0{dir(180)}) shifted (-(b+1)*0.4u,-(b+1)*0.4u); %línea extremo horizontal de la manta
q1=p0{dir(0)}..p1{dir(0)}; % línea extremo horizontal de la manta

q3=q1--q2--cycle; %perímetro de la manta
fill q3 withcolor white; %borrar lo que esté adentro de la manta. 
draw q3 withcolor 0.4*white; %pintar el perímetro de la manta


for i=1 upto b: %las lineas de la manta, al igual que los vectores
draw p0{dir(0)}..p1{dir(0)} shifted (-i*0.4u,-i*0.4u) withcolor 0.6*white;
drawarrow (((p0{dir(0)}..p1{dir(0)}) shifted (-i*0.4u,-i*0.4u)) cutafter (point (0.5) of ((p0{dir(0)}..p1{dir(0)}) shifted (-i*0.4u,-i*0.4u)))) withcolor 0.7*white;
endfor;

%---acerca de los vectores---%
q5=(p0{dir(0)}..p1{dir(0)}) shifted (-3*0.4u,-3*0.4u); %la línea para hallarle el punto crítico. 

p20:=precontrol 0.2 of q5; %estas funciones hallan puntos de las tangentes
p21:=postcontrol 0.2 of q5;

drawarrow p20--p21; %los vectores v y n
label.rt("v",p21);

p22=length(p21-p20)*dir(angle(p21-p20)+90)+p20;
drawarrow (p20--p22);
label.top(btex $\hat{n}$ etex,p22);

p30=0.2[p20,p21]; %definición del ángulo recto. 
p31=0.2[p20,p22];
p32=p30+p31-p20;

draw p30--p32--p31;


draw 1/2[p30,p31] withpen pencircle scaled 1.5; %el putno del ángulo

endfig;
end;