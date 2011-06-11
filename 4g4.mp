beginfig(4);

u=1cm;
pair p[];
path q[];

r=2.5u;
q1 = fullcircle scaled r; % el círculo central
draw q1; 

%El campo magnético
% las bolas con puntos
l=0.4u; %radio de las bolas

q2= fullcircle scaled l; %el gráfico de las bolas

p22=(0,0);

lx=u; %separación en x de las X
ly=u; %separación en y de las X
p1=(-1.5lx,1.5ly); %punto inicial.

for i=0 upto 3:
for j=0 upto 3:
draw q2 shifted (p1+(i*lx,-j*ly));
draw p22 shifted (p1+(i*lx,-j*ly)) withpen pencircle scaled 2;
endfor;
endfor;

label.lft("B",p1+(-0.25u,0));

p2=((0,0)--(-r,-r)) intersectionpoint (q1); %elec inferior
p3=((0,0)--(r,r)) intersectionpoint (q1); %elec superior

%las flechas 
%la superior
drawarrow q1 cutafter ((0,0)--(0,3r)) cutbefore ((0,0)--p3) withpen pencircle scaled 1;
%la inferior
drawarrow q1 cutafter ((0,0)--(0,-3r)) cutbefore ((0,0)--(-3r,0));

 
endfig;
end;