beginfig(7);

u=1cm;
pair o,p[];
path q[];
o=(0,0);

p0=(0,-0.8u);
p1=(-0.5u,-0.5u);
p2=(-1.2u,0);
p3=(0,0.7u);
p4=(u,u);
p5=(0.7u,0);
p6=(0.5u,-0.5u);

%---la figura---%
q0=p0..p1..p2..p3..p4..p5..p6..cycle;

for i=1 upto 100:
draw (q0 scaled (1-0.01*i)) withcolor (0.025*i)*white;
endfor;

%--- la cargas reales ---%

q2=(q0 scaled 0.3) rotated 90;
fill q2 withcolor black;

%--- las marcaciones ---%
label(btex $R$ etex,(0.5u,0.5u));
label.lrt(btex $\partial R$ etex,p6);

drawarrow (-u,u){dir(270)}..(-0.7u*0.3,0){dir(0)};
label.top(btex Distribuci\'on de carga etex,(-u,u));

endfig;
end;