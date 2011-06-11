beginfig(23);

u=1cm;
pair o,x,y,z,oo,u[];
path p[];
numeric t[],d;


% ---nuevo sistema--- %

oo=(0,0);

u3=(xpart oo + 0.25u,ypart oo + 2u);
u2=(xpart oo + 2u,ypart oo - 0.25u);
u1=0.7*(u2 rotated 220);

%--- vectores principales ---%
p1=oo{dir(250)}..u1;
p2=oo{dir(20)}..u2;
p3=oo{dir(110)}..u3;

t0=4/5;
t1=t0*length(p1);
t2=t0*length(p2);
t3=t0*length(p3);

drawarrow subpath (t1,length(p1)) of p1;
draw subpath (0,t1) of p1 dashed evenly;

drawarrow subpath (t2,length(p2)) of p2;
draw subpath (0,t2) of p2 dashed evenly;

drawarrow subpath (t3,length(p3)) of p3;
draw subpath (0,t3) of p3 dashed evenly;

label.ulft(btex u$_3$ etex,u3);
label.lft(btex u$_1$ etex,u1);
label.urt(btex u$_2$ etex,u2);

%--- vectores desplazados ---%


p111=subpath (0,t1) of p1;
p222=subpath (0,t2) of p2;
p333=subpath (0,t3) of p3;

draw p111 shifted ((point(t2) of p2) - oo);
draw p111 shifted ((point(t3) of p3) - oo);
draw p111 shifted ((point(t2) of p2) - oo + (point(t3) of p3) - oo);

draw p222 shifted ((point(t1) of p1) - oo);
draw p222 shifted ((point(t3) of p3) - oo);
draw p222 shifted ((point(t1) of p1) - oo + (point(t3) of p3) - oo);

draw p333 shifted ((point(t1) of p1) - oo);
draw p333 shifted ((point(t2) of p2) - oo);
draw p333 shifted ((point(t1) of p1) - oo + (point(t2) of p2) - oo);

%--- Distribución de superficies ---%
d=2u;

u5=(0.4u,-d);
u11=u5+(0,u);

u4=(d+0.6u)*dir(angle(u1))+(0.3u,-0.5u);
u10=u4+u*dir(angle(u4)+180);

u9=(-d-0.3u,0);
u15=u9+(u,0);

u8=(0.5u,d+1u);
u14=u8-(0,u);

u6=(1.3d,0.4u);
u12=u6-(u,0);

u7=(d+0.8u)*dir(angle(u1)-180)+(-0.2u,1.2u);
u13=u7+u*dir(angle(u7)-180);


drawarrow u5--u11 withpen pencircle scaled 1;
drawarrow u4--u10 withpen pencircle scaled 1;
drawarrow u9--u15 withpen pencircle scaled 1;
drawarrow u8--u14 withpen pencircle scaled 1;
drawarrow u6--u12 withpen pencircle scaled 1;
drawarrow u7--u13 withpen pencircle scaled 1;

label.rt(btex $S'_1$ etex,u7);
label.rt(btex $S_2$ etex,u6);
label.bot(btex $S'_3$ etex,u5);
label.lft(btex $S_1$ etex,u4);
label.lft(btex $S'_2$ etex,u9);
label.top(btex $S_3$ etex,u8);


endfig;
end;