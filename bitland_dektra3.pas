const fi = 'bitland.inp' ;
      fo = 'bitland.out' ;
var a : array[1..1000,1..1000] of longint ;
    f, g : text ;
    n : longint ;
function tong(u,v,x,y : longint) : longint ;
var t,i,j : longint ;
begin
t := 0 ;
for i := u to x do
  for j := v to y do
   t := t + a[i,j] ;
 exit(t);
end ;
function kt(u,v,x,y : longint) : boolean ;
var i,j : longint ;
begin
 for i := u to x do
  for j := v to y do
   if a[i,j] < 0  then exit(false) ;
  exit(true);
end ;
procedure input ;
var i,j : longint ;
begin
 assign(f,fi);
 reset(f);
 assign(g,fo);
 rewrite(g);
 readln(f,n);
 for i := 1 to n do
  for j := 1 to n do
   read(f,a[i,j]) ;
end ;
procedure output ;
var i,j,max,ss: longint ;
begin
max := -maxlongint ;
 for i := 1 to n - 2 do
  for j := 1 to n - 2 do
   if kt(i,j,i+2,j+2) = true then
    if max < tong(i,j,i+2,j+2) then
      max := tong(i,j,i+2,j+2) ;
 if max = -maxlongint then write(g,'-1') else
   writeln(g,max) ;
end ;
begin
 input ;
 output ;
close(f);
close(g)