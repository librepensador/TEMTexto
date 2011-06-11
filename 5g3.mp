beginfig(3);


u=1cm; %unidad de escalamiento
pair p[];
path q[];

%--- el bolo ---% 

h=4u;
g=0.7u;

p0=(0,0);
p1=p0+(0.3g,0);
p2=p0+(0.8g,0.4*h);
p3=p0+(1/3*g,2/3*h);
p4=p0+(0.55g,7/8*h); 
p5=p0+(0,h);


q0=p0{dir(0)}..p1..p2..p3..p4..{dir(180)}p5;
q1= q0 xscaled -1; 

draw q0;
draw q1;

%--- las cintas del bolo ---% 

p10= point 0.4*length(q0) of q0;
p11= point 0.45*length(q0) of q0;

a=0.38u;
q2=fullcircle xscaled (2*xpart p10) yscaled a;
q3=fullcircle xscaled (2*xpart p11) yscaled a;

draw (q2 cutbefore ((0,0)--(-10u,0))) shifted (0,ypart p10);
draw (q3 cutbefore ((0,0)--(-10u,0))) shifted (0,ypart p11);


p12= point 0.8*length(q0) of q0;
p13= point 0.83*length(q0) of q0;

b=0.25u;
q4=fullcircle xscaled (2*xpart p12) yscaled b;
q5=fullcircle xscaled (2*xpart p13) yscaled b;

draw (q4 cutbefore ((0,0)--(-10u,0))) shifted (0,ypart p12);
draw (q5 cutbefore ((0,0)--(-10u,0))) shifted (0,ypart p13);

%--- el eje ---% 
d=0.3u;
q6=(0,-d)--(0,d+h);

draw q6 cutbefore ((-u,h)--(u,h));
draw (q6 cutbefore ((-u,0)--(u,0))) cutafter ((-u,h)--(u,h)) dashed evenly;
draw q6 cutafter ((-u,0)--(u,0));


endfig;
end;