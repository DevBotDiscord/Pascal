const fi='bai2.inp';
      fo='bai2.out';
var f,g:text;
    n:longint;
    a,b:array [1..10000] of longint;
procedure nhap;
var i:longint;
begin
assign(f,fi); reset(f);
assign(g,fo); rewrite(g);
readln(f,n);
for i:=1 to n do
readln(f,a[i],b[i]);
end;

function max(a,b:longint):longint;
begin
if a>b then max:=a else max:=b;
end;

procedure tim;
var  i,j,x,y,s,k,t:longint;
begin
for i:=1 to n-1 do
for j:=i+1 to n do
if ((a[i]>a[j])) or ((a[i]=a[j]) and (b[i]>b[j])) then
begin
t:=a[i];
a[i]:=a[j];
a[j]:=t;
t:=b[i];
b[i]:=b[j];
b[j]:=t;
end;
x:=a[1];
y:=a[1]+b[1];
k:=0;
for i:=2 to n do
if a[i]<=y  then y:=max(y,a[i]+b[i])
else
begin
k:=k+(y-x);
x:=a[i];
y:=a[i]+b[i];
end;
s:=k+(y-x);
writeln(g,s);
end;
begin
nhap;
tim;
close(f);
close(g);
end.
