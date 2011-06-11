beginfig(10);

verbatimtex
%&latex
\documentclass{amsart}
\usepackage[spanish]{babel}
\begin{document}
etex


u=1cm;
pair p[],o,oo,t[];
path q[];
numeric b[],c[],d[];

o=(0,0);

%--- el tubérculo y su contorno ---% 
oo=o;
p1=(0,0.8u)+oo;
p2=(-0.3u,u)+oo;
p3=(0.3u,0.7u)+oo;
p4=(-1.2u,0.7u)+oo;
p5=(1.2u,0.7u)+oo;
p6=(-0.8u,0)+oo;
p7=(0.9u,0)+oo;
p8=(1.2u,-1.2u)+oo;
p9=(-1.2u,-0.5u)+oo;
p10=(0,-u)+oo;

q1=(p1..p2..p4..p6..p9..p10..p8..p7..p5..p3..cycle);

for i=1 upto 200:
draw (q1) scaled ((200-i)/200) withcolor i*0.01*white;
endfor;


%--- la superficio gaussiana ---% 

q2=q1 scaled 2;
draw q2 dashed evenly;

q3=q1 scaled 3;

%--- las líneas de campo ---% 

a=15;

for i=1 upto a:

b[i]:=arctime(i/a*arclength(q1)) of q1;
c[i]:=arctime(i/a*arclength(q2)) of q2;
d[i]:=arctime(i/a*arclength(q3)) of q3;

p20:=point (b[i]) of q1;
p21:=point (c[i]) of q2;
p22:=point (d[i]) of q3;

t1:=direction (b[i]) of q1;
t2:=direction (c[i]) of q2;
t3:=direction (d[i]) of q3;

q4:= p20{dir(angle(t1)-90)}..{dir(angle(t2)-90)}p21..{dir(angle(t2)-90)}p22;
drawarrow (subpath (0,1/4*length(q4)) of q4);
drawarrow (subpath (1/4*length(q4),3/4*length(q4)) of q4);
draw (subpath (3/4*length(q4),length(q4)) of q4);

endfor;

label.lft(btex $\mathbf{E}$ etex,point (length(q4)) of q4);

p23=p21+u*dir(angle(t2)-90);

drawarrow p21--p23 withpen pencircle scaled 1;
label.rt(btex $\mathbf{\hat{n}}$ etex,p23);


%a=15;

%for i=1 upto a:

%b[i]:=i/a*length(q1);

%p20:=point (b[i]) of q1;
%p21:=point (b[i]) of q2;
%p22:=point (b[i]) of q3;

%t1:=direction (b[i]) of q1;
%t2:=direction (b[i]) of q2;
%t3:=direction (b[i]) of q3;

%q4:= p20{dir(angle(t1)-90)}..{dir(angle(t2)-90)}p21..{dir(angle(t2)-90)}p22;
%drawarrow (subpath (0,1/4*length(q4)) of q4);
%draw (subpath (1/4*length(q4),length(q4)) of q4);

%endfor;





endfig;
end;