beginfig(3);

pair a,b,aa,bb,c,d,e,k,l;

u=1cm; 

a=4u*dir(10);
b=2u*dir(60);

aa=1/4(a);
bb=aa rotated (angle(b)-angle(a));

drawarrow (0,0)--(0,3u) withpen pencircle scaled 1;
drawarrow (0,0)--(5u,0) withpen pencircle scaled 1;

drawarrow (0,0)--a;
label.bot("A", a);
drawarrow (0,0)--b;
label.ulft("B", b);

drawarrow a--(b+a);

drawarrow aa{dir(angle(a)+90)}..bb{dir(angle(b)+90)};
label.urt(btex $\theta$ etex,1/2[aa,bb]);


c=b+a+u*dir(angle(a));
e=(b) rotated (-angle(a));

d=a+(xpart e+u)*dir(angle(a));

draw b--c dashed evenly;
draw a--d dashed evenly;

k=(a+b+0.5u*dir(angle(a)));
l=(a+(0.5u+xpart e)*dir(angle(a)));
drawdblarrow k--l;
label.rt(btex $B$ sen $\theta$ etex, 1/2[k,l]);


endfig;
end;