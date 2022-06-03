const fi = 'bai3.inp' ;
      fo = 'bai3.out' ;
var  f ,g : text ;
     a,b : string ;
procedure input ;
begin
 assign(f,fi);
 reset(f);
 assign(g,fo);
 rewrite(g);
 readln(f,a);
 readln(f,b);
end ;
procedure output ;
begin
 while length(a) < length(b) do
  a := '0' + a ;
 while length(b) < length(a) do
  b := '0' + b ;
 if a < b then write(g,'-1');
 if a = b then write(g,'0');
 if a > b then write(g,'1');
end ;
begin
 input ;
 output ;
close(f);
close(g);
end .