beginfig(24);


u=1cm;
pair p[],o,oo,r[],s[],t[];
path q[];
numeric i[];
numeric l[];

o=(0,0);
p0=(u,1u);
p1=(0.3u,2u);
p2=(u,3u);
oo=o+(0,4u);

for i=1 upto 5:
draw o{dir(50/i)}..(i/5*xpart p0,ypart p0)..(i/5*xpart p1,ypart p1)..(i/5*xpart p2,ypart p2)..oo{dir(180-50/i)};
endfor;

q1=o{dir(50/5)}..(5/5*xpart p0,ypart p0)..(5/5*xpart p1,ypart p1)..(5/5*xpart p2,ypart p2)..oo{dir(180-50/5)};

p3=(-u,1u);
p4=(-0.3u,2u);
p5=(-u,3u);

for i=1 upto 5:
draw o{dir(180-50/i)}..(i/5*xpart p3,ypart p3)..(i/5*xpart p4,ypart p4)..(i/5*xpart p5,ypart p5)..oo{dir(50/i)};
endfor;

q2=o{dir(180-50/5)}..(5/5*xpart p3,ypart p3)..(5/5*xpart p4,ypart p4)..(5/5*xpart p5,ypart p5)..oo{dir(50/5)};

draw o--oo;

s0=(0.3u,0);

r0=(0,0);

for i=1 upto 19:
r[i]= r[(i-1)]+(0,1/3*xpart s[(i-1)]);
s[i]= (r[i]--(r[i]+(10u,0))) intersectionpoint (q1);
t[i]= (-xpart s[i],ypart s[i]);
draw s[i]{dir(200)}..t[i]{dir(160)};
endfor;

draw fullcircle scaled (0.6*u) shifted (0.1u,3.2u);

%--- el cubo ---%

drawarrow (0.1u,3.2u){dir(30)}..(3u,3.2u);

p10=(3u,u); %la referencia del cubo. 
l2=1.5u; %lado del cubo. 
l1=0.7u; %profundidad del cubo.

p11=p10+(l2,0);
p12=p10+(l2,l2);
p13=p10+(0,l2);

draw p10--p11--p12--p13--cycle;

p14=p10+l1*dir(35); %el fondo pero inclinado. 
p15=p14+(l2,0);
p16=p14+(l2,l2);
p17=p14+(0,l2);

draw p10--p14 dashed evenly;
draw p11--p15;
draw p12--p16;
draw p13--p17;

draw p17--p14--p15 dashed evenly;
draw p15--p16--p17;

label.lrt(btex $\Delta V_i$ etex,p11);
label.rt(btex $S_i$ etex,1/2[p15,p16]);

endfig;
end;