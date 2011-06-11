beginfig(3);


u=1cm;
pair o;
path q[];

o=(0,0);

%--- la nube de electrones---%

r=3u;

q1=fullcircle scaled r;

for i=1 upto 100:
draw (q1 scaled (i/100)) withcolor (1-(i/100)*(i/100))*white;
endfor;

%--- los datos ---% 

label.rt(btex $Q$ etex,o);
label(btex $-Q$ etex,o+0.3r*dir(130));

draw o withpen pencircle scaled 3;

endfig;
end;