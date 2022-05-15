const fi='bai3.inp';
fo='bai3.out';
var f,g:text;
n:longint;
a:array[1..4000,1..4000] of longint;
procedure input;
begin
assign(f,fi);
reset(f);
assign(g,fo);
rewrite(g);
readln(g);
end;
procedure check;
var i,j,k,left,right,tren,duoi:longint;
begin
left:=1;
right:=n;
duoi:=n;
tren:=1;
k:=0;
while k<sqr(n) do
begin
for i:= left to right do
begin
inc(k);
A[tren,i]:=k;
end;
inc(tren);
for i:= tren to duoi do
begin
inc(k);
A[i,right]:=k;
end;
dec(right);
for i:= right downto left do
begin
inc(k);
A[duoi,i]:=k;
end;
dec(duoi);
for i:= duoi downto tren do
begin
inc(k);
A[i,left]:=k;
end;
inc(left);
end;
for i:=1 to n do
begin
for j:=1 to n do
write(g,a[i,j]);
writeln(fo);
end;
end;
begin
input;
check;
close(f);
close(g);
end.