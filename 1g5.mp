beginfig(5);

u=1cm;
path p,pp,q,s,t; 
numeric d,l;

p=(0,0)--(3u,0)--(3.5u,0.3u)--(5u,0.3u)--(5.5u,0)--(8.5u,0);
pp=(0,0)--(3u,0)--(3.5u,-0.3u)--(5u,-0.3u)--(5.5u,0)--(8.5u,0);

q=p shifted (0,0.4u);
s=pp shifted (0,3u);
t=pp shifted (0,3.4u);

draw p;
draw q;
draw s; 
draw t;

d=1.3u;
l=0.8u;
k=1/8(3-0.4)*u;
k2=1/8(3-0.3-(0.3+0.4))*u;

for j=0 upto 1:
for i=1 upto 7:
drawarrow (d*j,k*i+0.4u)--(l+d*j,k*i+0.4u);
endfor
endfor

for i=1 upto 7:
drawarrow (2d,k*i+0.4u)--(3.5u,0.7u+k2*i);
endfor

for i=1 upto 7:
drawarrow (3.5u+0.2u,0.7u+k2*i)--(5u-0.2u,0.7u+k2*i);
endfor

for i=1 upto 7:
drawarrow (5u,0.7u+k2*i)--(3.5u-2d+5u,k*i+0.4u);
endfor

for j=1 upto 2:
for i=1 upto 7:
drawarrow (5u+j*d,k*i+0.4u)--(5u+j*d+l,k*i+0.4u);
endfor
endfor


endfig;
end;