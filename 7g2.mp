

input makecirc;


%initlatex("\usepackage{paquete}" &
%"\usepackage{otro_paquete}" &
%"\newcommand{comando}{definicion}");


beginfig(2);

u:=1cm; % unit of length
pair o,p[];

o=(0,0);
d=1.3u;


source.a(o,DC,90,"V_{DC}"," ");
centreof.A(S.a.p,S.a.n,cap);

p1=c.A+(d,0);
capacitor.a(p1,variant,phi.A,"^b_a"," ");

wire(S.a.p,C.a.l,udsq);
wire(S.a.n,C.a.r,udsq);




endfig;
end;