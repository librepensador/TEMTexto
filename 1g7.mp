beginfig(7);

u=1cm;
l=3.5u;
ll=1/2*l;
pair oo,x,xx,y,z,p[],o;

oo=(-2.5u,-2.2u);
z=(0,4u)+oo;
y=(4u,0)+oo;
xx=2*u*dir(210);
x=xx+oo;



label.rt(btex $x$ etex, 1[oo,x]);
label.llft(btex $y$ etex, 1[oo,y]);
label.lrt(btex $z$ etex, 1[oo,z]);

o=(0,0);

p0=(-l,ll);
p1=(0,ll)+0.7ll*(-dir(angle(xx)));
p2=(0,ll)+0.7ll*(dir(angle(xx)));
p3=(ll,ll);
p4=(-l,0)+0.7ll*(dir(angle(xx)));
p5=(-l,0)+0.7ll*(-dir(angle(xx)));
p6=(ll,0)+0.7ll*(-dir(angle(xx)));
p7=(ll,0)+0.7ll*(dir(angle(xx)));
p8=(-l,-l);
p9=(0,-l)+0.7ll*(-dir(angle(xx)));
p10=(ll,-l);
p11=(0,-l)+0.7ll*(dir(angle(xx)));
p21=((p11--p9) intersectionpoint (p8--p10));
p22=((p0--p8) intersectionpoint (p4--p5));
p23=((p0--p3) intersectionpoint (p1--p2));

draw p1--p2;
draw p0--p3--p10;
draw p2--p11;
draw p4--p7--p6;
draw p4--p22;
draw p0--p22;
draw o--p23;
draw o--0.7ll*(dir(angle(xx)));
draw o--(ll,0);
draw p10--p21;
draw p11--p21;
draw p8--((p8--p10) intersectionpoint (p2--p11));
draw p8--((p8--p0) intersectionpoint (p4--p7));
draw p21--((p4--p7) intersectionpoint (p21--o));
draw p6--((p10--p3) intersectionpoint (p6--p5));
draw p1--((p1--p9) intersectionpoint (p0--p3));
draw p22--((p2--p11) intersectionpoint (p22--o));
draw 0.7l*-dir(angle(xx));

p77=1/2[((oo--(oo+(0,10u))) intersectionpoint (p4--p7)) , ((oo--(oo+(0,10u))) intersectionpoint (p22--o))];
p88=1/2[((oo--(oo+(10u,0))) intersectionpoint (p2--p11)) , ((oo--(oo+(10u,0))) intersectionpoint (p21--o))];
p99=oo+0.35ll*-dir(angle(xx));

draw p77 withpen pencircle scaled 2;
draw p99 withpen pencircle scaled 2;
draw p88 withpen pencircle scaled 2;


drawarrow oo--x;
drawarrow p77--z;
drawarrow p88--y;

draw oo--((oo--(oo+(0,10u))) intersectionpoint (p4--p7));
draw ((oo--(oo+(0,10u))) intersectionpoint (p4--p7))--p77 dashed withdots scaled 0.5;

draw oo--((oo--(oo+(10u,0))) intersectionpoint (p2--p11));
draw ((oo--(oo+(10u,0))) intersectionpoint (p2--p11))--p88 dashed withdots scaled 0.5;

draw oo--p99;
draw p99--(p99+ll/4*-dir(angle(xx))) dashed withdots scaled 0.5;

label.bot(btex $y=y_0$ etex,p88);
label.rt(btex $z=z_0$ etex,p77);
labeloffset:=3mm;
label.top(btex $  x=x_0$ etex,p99);
labeloffset:=0;

drawarrow o--2ll*dir(10) withpen pencircle scaled 1;
label.rt(btex $(x_0,y_0,z_0)$ etex, 2ll*dir(10));

endfig;
end;