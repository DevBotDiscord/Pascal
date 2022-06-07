const fi='hopsua.inp';
      fo='hopsua.out';
var n,k:longint;
    a:array[1..100] of longint;  f,g:text;
procedure nhap;
var i:longint;
begin
assign(f,fi);reset(f);
assign(g,fo);rewrite(g);
readln(f,n,k);
for i:=1 to n do
read(f,a[i]);
end;
procedure tim;
var i,j,t,d:longint;
begin
for i:=1 to n-1 do
for j:=1 to n do
if a[i]>a[j] then
begin
t:=a[i];
a[i]:=a[j];
a[j]:=t;
end;
i:=1; d:=0; t:=0;
while i<=n-k+1 do
begin
inc(d);
for j:=i to i+k-1 do
if a[j]<=d then inc(t);
i:=i+k;
end;

write(g,d);
end;
begin
nhap;
tim;
close(f);
close(g);
end.