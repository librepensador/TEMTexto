beginfig(1);

u=6mm;

pair a,b,c,d,e,f,g,h,j,k,l,m,n,p;

a=(0,0);
b=(0,6u);
c=(6u,0);
d=(-3u,-3u);
e=(4u,2u);
f=(4u,-2u);
g=(-2u,-2u);
h=(6u,0);
j=(0,4u);

draw e withpen pencircle scaled 4;

k=1/3[a,e];
l=u*dir(225);
m=1.5u*dir(0);
p=1.5u*dir(90);

%Sistema coordenado y vector

drawarrow a--b withpen pencircle scaled 1;
label.lft(btex $p_z$ etex, (0,4u));
drawarrow a--c withpen pencircle scaled 1;
label.top(btex $p_y$ etex, 1[a,c]);
drawarrow a--d withpen pencircle scaled 1;
label.lrt(btex $p_x$ etex, (-2u,-2u));
drawarrow a--e;
label.top(btex p etex, 1[a,e]);
label.lrt(btex $(p_x,p_y,p_z)$ etex, 1[a,e]);


label.rt(btex $z$ etex, 1[a,b]);
label.lrt(btex $y$ etex, 1[a,c]);
label.lrt(btex $x$ etex, 1[a,d]);

%Proyecciones sobre ejes del vector

draw e--f dashed evenly;
draw f--a dashed evenly;
draw f--g dashed evenly;
draw h--f dashed evenly;
draw e--j dashed evenly;

%Ángulos de cosenos directores

drawarrow l{right}..k;
drawarrow 1.5m{up}..1.5k;
drawarrow 1/2p{right}..1/2k{dir(angle(k)-90)};
labeloffset := 3.5mm;
label.bot(btex $\alpha$ etex, 1/3[l,k]);
label.rt(btex $\beta$ etex, 1/2[1.3m,1.3k]);
label.top(btex $\gamma$ etex, 1/2[1/2p,1/2k]);




endfig;
end;