beginfig(6);

u=1cm;
pair o,x,y,z,oo,u[];
path p[];


o=(0,0);
z=(0,3.5u);
y=(3u,-0.7u);
x=0.5*(-3u,-0.7u);

drawarrow o--x; 
drawarrow o--y; 
drawarrow o--z; 

label.lrt(btex $x$ etex, 1[o,x]);
label.llft(btex $y$ etex, 1[o,y]);
label.lrt(btex $z$ etex, 1[o,z]);

oo=(1u,0.8u);

u3=(xpart oo + 0.25u,ypart oo + 2u);
u2=(xpart oo + 2u,ypart oo - 0.25u);
u1=((xpart oo / 2.2),(ypart oo / 2.2));


p1=oo{dir(250)}..u1;
p2=oo{dir(20)}..u2;
p3=oo{dir(110)}..u3;

p12=p1 shifted (u2-oo);
p13=p1 shifted (u3-oo);

p21=p2 shifted (u1-oo);
p23=p2 shifted (u3-oo);

p31=p3 shifted (u1-oo);
p32=p3 shifted (u2-oo);

drawarrow p1 withpen pencircle scaled 1;
drawarrow p2 withpen pencircle scaled 1;
drawarrow p3 withpen pencircle scaled 1;

draw p12;
draw p13;
draw p21;
draw p23;
draw p31;
draw p32;


label.top(btex u$_3$ etex,u3);
label.bot(btex u$_1$ etex,u1);
label.urt(btex u$_2$ etex,u2);

u33=oo+u*dir(110);
u22=(oo+u*dir(20));
u11=(oo+7/10*u*dir(250));

drawarrow oo--u22;
drawarrow oo--u33;
drawarrow oo--u11;

label.rt(btex $\hat{u}_1$ etex, u11);
label.top(btex $\hat{u}_2$ etex, u22);
label.top(btex $\hat{u}_3$ etex, u33);

drawarrow (1/2[u3,u2] shifted (1.5u,0.7u))--(1/2[u3,u2] shifted (0,0.7u));
drawarrow (1/2[u3,u1] shifted (-1.5u,-0.7u))--1/2[u3,u1] shifted (-0.3u,-0.7u);
drawarrow (1/2[u1,u2] shifted (2.2u,0))--(1/2[u1,u2] shifted (0.7u,0));

label.lft(btex $u_2=u_{20}$ etex, (1/2[u3,u1] shifted (-1.5u,-0.7u)));
label.rt(btex $u_1=u_{10}$ etex,(1/2[u3,u2] shifted (1.5u,0.7u)));
label.rt(btex $u_3=u_{30}$ etex,(1/2[u1,u2] shifted (2.2u,0)));



endfig;
end;