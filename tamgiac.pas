const fi='tamgiac.inp';
fo='tamgiac.out';
var f,g:text;
n:longint;
a:array[1..500,1..500] of longint;
procedure input
begin
assign(f,fi);
reset(f);
assign(g,fo);
rewrite(g);
readln(f,n);
end;
procedure check;
var i,j,t:longint;
begin
for i:=1 to n+1 do
begin
a[i,1]:=1;
a[i,i]:=1;
for j:=2 to i-1 do
a[i,j]:=a[i-1,j]+a[i-1,j-1];
end;
for j:=1 to n+1 do
write(g,a[n+1,j],' ');
end;
begin
input;
check;
close(f);
close(g);
end.