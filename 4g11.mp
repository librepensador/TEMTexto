beginfig(11);

%verbatimtex
%&latex
%\documentclass{amsart}
%\usepackage[spanish]{babel}
%\begin{document}
%etex


u=1cm;
pair p[],x,y,z,o,oo,t,r[],l[];
path q[];
numeric b,c;

o=(0,0);

%--- las figuritas interesantes ---% 

p20=(-1.5u,0);
p21=(1.5u,0);

u1=1.5u;
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

q1=(p1..p2..p4..p6..p9..p10..p8..p7..p5..p3..cycle);

for i=1 upto 200:
draw q1 scaled ((200-i)/200) shifted p20 withcolor i*0.02*white;
draw q1 scaled ((200-i)/200) shifted p21 withcolor i*0.02*white;
endfor;

%--- el efecto de alineación de dipolos---% 
t=0.5u*dir(15);
l1=1.5t;
l2=0.25*l1 rotated 90;

p30=0.7*p9+p20;
p50=p30-0.35t;
drawarrow p50--p50+t;
drawarrow p50+l1--p50+l1+t;
drawarrow p50+2l1--p50+2l1+t;

p31=p30-l2-0.5l1;
drawarrow p31--p31+t;
drawarrow p31+l1--p31+l1+t;
drawarrow p31+2l1--p31+2l1+t;

p32=p31-l2;
drawarrow p32--p32+t;
drawarrow p32+l1--p32+l1+t;
drawarrow p32+2l1--p32+2l1+t;

p33=p32-l2+0.8l1;
drawarrow p33--p33+t;
drawarrow p33+l1--p33+l1+t;

p34=p33-l2+0.4l1;
drawarrow p34--p34+t;
drawarrow p34+l1--p34+l1+t;

p35=p34-l2+0.8l1;
drawarrow p35--p35+t;

p36=p35-l2;
drawarrow p36--p36+t;


p40=p30+l2;
drawarrow p40--p40+t;
drawarrow p40+l1--p40+l1+t;
drawarrow p40+2l1--p40+2l1+t;

p41=p40+l2+0.3l1;
drawarrow p41--p41+t;
drawarrow p41+l1--p41+l1+t;
drawarrow p41+2l1--p41+2l1+t;

p42=p41+l2-0.05l1;
drawarrow p42--p42+t;
drawarrow p42+l1--p42+l1+t;
drawarrow p42+2l1--p42+2l1+t;

p43=p42+l2+0.25l1;
drawarrow p43--p43+t;

p44=p43+l2-0.2l1;
drawarrow p44--p44+t;

p45=p44+l2-0.2l1;
drawarrow p45--p45+t;


%--- el efecto de las cargas + y - ---%
label.rt("-",p50+(p21-p20));
label.rt("-",p31+(p21-p20));
label.rt("-",p32+(p21-p20));
label("-",p33+(p21-p20));%extremo derecho
label.rt("-",p34+(p21-p20));
label("-",p35+(p21-p20));
label.rt("-",p36+(p21-p20));

label.rt("-",p40+(p21-p20));
label.rt("-",p41+(p21-p20));
label.rt("-",p42+(p21-p20));
label("-",p43+(p21-p20));
label("-",p44+(p21-p20));
label("-",p45+(p21-p20));

label.lft("+",p50+2l1+t+(p21-p20));
label.lft("+",p31+2l1+t+(p21-p20));
label.lft("+",p32+2l1+t+(p21-p20));
label("+",p33+l1+t+(p21-p20));
label.lft("+",p34+l1+t+(p21-p20));
label("+",p35+t+(p21-p20));
label("+",p36+t+(p21-p20));

label.lft("+",p40+2l1+t+(p21-p20));
label.lft("+",p41+2l1+t+(p21-p20));
label.lft("+",p42+1.2l1+t+(p21-p20));
label("+",p43+t+(p21-p20));
label("+",p44+t+(p21-p20));
label("+",p45+t+(p21-p20));

%---los nombres ---% 
p51=(0,-1.5u);
label.bot("a)",p20+p51);
label.bot("b)",p21+p51);

label(btex $\Rightarrow$ etex,o);

endfig;
end;