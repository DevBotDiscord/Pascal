const fi='bai3.inp';
fo='bai3.out';
var f,g:text;
n:longint;
a:array[1..4000,1..4000] of longint;
procedure nhap;
begin
assign(f,fi);
reset(f);
assign(g,fo);
rewrite(g);
readln(g);
end;
procedure kiemtra;
var i,j,k,trai,phai,tren,duoi:longint;
begin
trai:=1;
hai:=n;
duoi:=n;
tren:=1;
k:=0;
while k<sqr(n) do
begin
for i:= trai to phai do
begin
inc(k);
A[tren,i]:=k;
end;
inc(tren);
for i:= tren to duoi do
begin
inc(k);
A[i,phai]:=k;
end;
dec(phai);
for i:= phai downto trai do
begin
inc(k);
A[duoi,i]:=k;
end;
dec(duoi);
for i:= duoi downto tren do
begin
inc(k);
A[i,trai]:=k;
end;
inc(trai);
end;
for i:=1 to n do
begin
for j:=1 to n do
write(g,a[i,j]);
writeln(fo);
end;
end;
begin
nhap;
kiemtra;
close(f);
close(g);
end.