beginfig(4);


u=1cm; %unidad de escalamiento
pair p[];
path q[];

%--- el primer recipiente---%
p0=(2u,0);
p1=p0+(u,0);

q0=p0{dir(270)}..{dir(30)}p1--p0;


%--- las iteraciones---%
a=20; %número de recipientes

q100=(2.5u,0){dir(90)}..{dir(90+360/a)}((2.5u,0) rotated (360/a)); 
%la unión%
draw q100;


for i=1 upto a:
q[i]=q0 rotated (360/a*i);
draw q[i]; 
endfor;

for i=0 upto (a-1):
draw ((q100 rotated (360/a*i)) cutafter q[i+1]);
endfor;

%--- el rotor---% 

q101=fullcircle scaled 2u;
q102=fullcircle scaled 1.5u;


fill q102 withcolor 0.7*white;

draw q101;
draw q102;

endfig;
end;