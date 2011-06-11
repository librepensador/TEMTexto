beginfig(4);

u=1cm;
pair a,b,c,d,e,f,g,h,i,j,k,l;

a=(0,0);
b=(0,3u);
c=(3u,0);
d=(-1.5u,-1.5u);

drawarrow a--b withpen pencircle scaled 1;
drawarrow a--c withpen pencircle scaled 1;
drawarrow a--d withpen pencircle scaled 1;

label.rt(btex $z$ etex, 1[a,b]);
label.lrt(btex $y$ etex, 1[a,c]);
label.lrt(btex $x$ etex, 1[a,d]);


e=(0.3u,0.7u);
f=(1u,-0.5u);
g=(1.5u,1.2u);

h=e+f;
i=g+e;
j=g+e+f;
k=f+g;

drawarrow a--e;
drawarrow a--f;
drawarrow a--g;

label.top("A",e);
label.bot("C",g);
label.llft("B",f);

draw e--h;
draw e--i;
draw i--g;
draw i--j;
draw j--h;
draw j--k;
draw f--k;
draw f--h;
draw g--k;


endfig;
end;