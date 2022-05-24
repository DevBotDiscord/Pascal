const fi='doitien.inp';
fo='doitien.out';
var f,g:text;
n,m:longint;
a:array[1..500000] of longint;
procedure nhap;
var i:longint;
begin
assign(f,fi);
reset(F);
assign(g,fo);
rewrite(g);
read(f,n,m);
for i:=1 to m do
read(f,a[i]);
end;
procedure kiemtra;
var t,dem,i,t1,t2,tong:longint;
begin
t:=n*23000;

for i:=1 to m do
begin
if t div a[i]<>0 then begin
dem:=t div a[i];
t1:=a[i];
end;
if t mod a[i]=0 then begin dem:=t div a[i]; t2:=a[i]; end;     end;
write(g,dem,' ',t1);
end;
begin
nhap;
kiemtra;
close(f);
close(g);
end.