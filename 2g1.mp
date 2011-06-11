beginfig(1);

u=1cm;
pair p[],o;
path q[];
o=(-2u,-u);

%--- la figurita interesante ---% 

p1=(0,0.8u);
p2=(-0.3u,u);
p3=(0.3u,0.7u);
p4=(-1.2u,0.7u);
p5=(1.2u,0.7u);
p6=(-0.8u,0);
p7=(0.9u,0);
p8=(1.2u,-1.2u);
p9=(-1.2u,-0.5u);
p10=(0,-u);

for i=1 upto 200:
draw (p1..p2..p4..p6..p9..p10..p8..p7..p5..p3..cycle) rotated 50 scaled ((200-i)/200) withcolor i*0.01*white;
endfor;
label.rt(btex $R$ etex,p8);

%--- la superficie dr ---%

drawarrow o{dir(90)}..(p9+(0.5u,0.5u)){dir(0)};
label.bot(btex $\partial R$ etex,o);

endfig;
end;