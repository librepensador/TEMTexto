beginfig(9);

verbatimtex
%&latex
\documentclass{amsart}
\usepackage[spanish]{babel}
\begin{document}
etex



u=1cm;
pair p[];
path q[];


l1=3u; %longitud del cuadrado. 
l2=u; %separación de cuadrado. 

%---los cuadrados contenedores---%
q1=(-l1-l2,0)--(-l2,0)--(-l2,l1)--(-l1-l2,l1)--cycle; % el primer cuadrado 
q2=(l1+l2,0)--(+l2,0)--(l2,l1)--(l1+l2,l1)--cycle; % el segundo cuadrado 

draw q2;
draw q1;

%---LADO Con campo ---%
l3=0.3u; %longitud de las flechas.

for i=1 upto 5:
for j=1 upto 5:
drawarrow ((0,0)--(0,l3)) shifted ((i*l1/5,j*l1/5)+(l2-l3,-1.5l3)); %las flechas ordenadas
endfor;
endfor;

label(btex b) $|\left\langle\mathbf{p}\right\rangle|\neq 0$ etex,(l2+l1/2,-0.5u));


%---LADO SIN campo ---%

drawarrow ((0,0)--(l3*dir(150))) shifted ((-1*l1/5,1*l1/5)-(l2-l3,1.5l3)); 
drawarrow ((0,0)--(l3*dir(50))) shifted ((-2*l1/5,1*l1/5)-(l2-l3,1.5l3)); 
drawarrow ((0,0)--(l3*dir(150))) shifted ((-3*l1/5,1*l1/5)-(l2-l3,1.5l3)); 
drawarrow ((0,0)--(l3*dir(180))) shifted ((-4*l1/5,1*l1/5)-(l2-l3,1.5l3)); 
drawarrow ((0,0)--(l3*dir(70))) shifted ((-5*l1/5,1*l1/5)-(l2-l3,1.5l3)); 
drawarrow ((0,0)--(l3*dir(135))) shifted ((-1*l1/5,2*l1/5)-(l2-l3,1.5l3)); 
drawarrow ((0,0)--(l3*dir(350))) shifted ((-2*l1/5,2*l1/5)-(l2-l3,1.5l3)); 
drawarrow ((0,0)--(l3*dir(130))) shifted ((-3*l1/5,2*l1/5)-(l2-l3,1.5l3)); 
drawarrow ((0,0)--(l3*dir(400))) shifted ((-4*l1/5,2*l1/5)-(l2-l3,1.5l3)); 
drawarrow ((0,0)--(l3*dir(120))) shifted ((-5*l1/5,2*l1/5)-(l2-l3,1.5l3)); 
drawarrow ((0,0)--(l3*dir(270))) shifted ((-1*l1/5,3*l1/5)-(l2-l3,1.5l3)); 
drawarrow ((0,0)--(l3*dir(-170))) shifted ((-2*l1/5,3*l1/5)-(l2-l3,1.5l3)); 
drawarrow ((0,0)--(l3*dir(45))) shifted ((-3*l1/5,3*l1/5)-(l2-l3,1.5l3)); 
drawarrow ((0,0)--(l3*dir(67))) shifted ((-4*l1/5,3*l1/5)-(l2-l3,1.5l3)); 
drawarrow ((0,0)--(l3*dir(370))) shifted ((-5*l1/5,3*l1/5)-(l2-l3,1.5l3)); 
drawarrow ((0,0)--(l3*dir(60))) shifted ((-1*l1/5,4*l1/5)-(l2-l3,1.5l3)); 
drawarrow ((0,0)--(l3*dir(670))) shifted ((-2*l1/5,4*l1/5)-(l2-l3,1.5l3)); 
drawarrow ((0,0)--(l3*dir(345))) shifted ((-3*l1/5,4*l1/5)-(l2-l3,1.5l3)); 
drawarrow ((0,0)--(l3*dir(086))) shifted ((-4*l1/5,4*l1/5)-(l2-l3,1.5l3)); 
drawarrow ((0,0)--(l3*dir(250))) shifted ((-5*l1/5,4*l1/5)-(l2-l3,1.5l3)); 
drawarrow ((0,0)--(l3*dir(2349))) shifted ((-1*l1/5,5*l1/5)-(l2-l3,1.5l3)); 
drawarrow ((0,0)--(l3*dir(-90))) shifted ((-2*l1/5,5*l1/5)-(l2-l3,1.5l3)); 
drawarrow ((0,0)--(l3*dir(3460))) shifted ((-3*l1/5,5*l1/5)-(l2-l3,1.5l3)); 
drawarrow ((0,0)--(l3*dir(40))) shifted ((-4*l1/5,5*l1/5)-(l2-l3,1.5l3)); 
drawarrow ((0,0)--(l3*dir(670))) shifted ((-5*l1/5,5*l1/5)-(l2-l3,1.5l3)); 

label(btex a) $|\left\langle\mathbf{p}\right\rangle|=0$ etex,(-l2-l1/2,-0.5u));

%--- La flecha del campo magnético ---%
ahlength := 8bp;
drawarrow (2*l2+l1,0)--(2*l2+l1,l1) withpen pencircle scaled 3;
label.rt("E",1/2[(2*l2+l1,0),(2*l2+l1,l1)]) ;

endfig;
end;