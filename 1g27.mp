beginfig(27);


u=1cm;
pair o,x,y,z,oo,u[],ooo,xx,yy,zz;
path p[];

ooo=(-5u,0);
o=(0,0)+ooo;
z=(0,3.5u)+ooo;
y=(3u,-0.7u)+ooo;
x=0.5*(-3u,-0.7u)+ooo;

drawarrow o--x; 
drawarrow o--y; 
drawarrow o--z; 

label.lrt(btex $x$ etex, 1[o,x]);
label.llft(btex $y$ etex, 1[o,y]);
label.lrt(btex $z$ etex, 1[o,z]);

oo=(0.3u,0.5u)+ooo;

%--- los ui ---%

u3=(xpart oo + 0.25u,ypart oo + 2u);
u2=(xpart oo + 2u,ypart oo - 0.25u);
u1=(-0.3u,-0.3u)+ooo;

label.top(btex u$_3$ etex,u3);
label.bot(btex u$_1$ etex,u1);
label.bot(btex u$_2$ etex,u2);

%-- las curvas ---%

p1=oo{dir(250)}..u1;
p2=oo{dir(20)}..u2;
p3=oo{dir(110)}..u3;

drawarrow p1;
drawarrow p2;
drawarrow p3;

%--- los vectores tangentes a las curvas en oo ---%

u33=oo+2u*dir(110);
u22=(oo+2u*dir(20));
u11=(oo+7/10*2u*dir(250));

drawarrow oo--u22;
drawarrow oo--u33;
drawarrow oo--u11;

label.bot(btex $\nabla\times$F$\left.\right|_1=\Gamma_1$u$_1$ etex,u11);
label.rt(btex $\nabla\times$F$\left.\right|_2=\Gamma_2$u$_2$ etex,u22);
label.lft(btex $\nabla\times$F$\left.\right|_3=\Gamma_3$u$_3$ etex,u33);

%--- El super vector ---%

drawarrow oo--(oo+(2u,2u)) withpen pencircle scaled 1;
label.top(btex $\nabla\times$F etex,(oo+(2u,2u)));


%---------------------------------------%

zz=(0,3.5u);
yy=(3u,-0.7u);
xx=0.5*(-3u,-0.7u);

drawarrow (0,0)--xx; 
drawarrow (0,0)--yy; 
drawarrow (0,0)--zz; 

label.lrt(btex $x$ etex, 1[(0,0),xx]);
label.llft(btex $y$ etex, 1[(0,0),yy]);
label.lrt(btex $z$ etex, 1[(0,0),zz]);

p4=fullcircle xscaled 0.6u yscaled 1.5u;
p5=p4 shifted (u,u);
p6=p4 scaled 1.2 shifted (u,u);
p7=p4 scaled 1.4 shifted (u,u);

draw p5;
draw p7;

drawarrow subpath (1/16length(p6),3/16length(p6)) of p6;
drawarrow subpath (5/16length(p6),7/16length(p6)) of p6;
drawarrow subpath (9/16length(p6),11/16length(p6)) of p6;
drawarrow subpath (13/16length(p6),15/16length(p6)) of p6;

drawarrow (u,u)--(3u,1.5u) withpen pencircle scaled 1;
label.rt(btex $\nabla\times$F etex,(3u,1.5u));

endfig;
end;