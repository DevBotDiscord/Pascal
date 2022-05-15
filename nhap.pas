const fi='bai4.inp';
      fo='bai4.out';
var f,g:text;
    a,b,c:array [1..100] of string;
    s:string;
    n:longint;
procedure nhap;
var i,j:longint;     t,t1:string;
begin
assign(f,fi);reset(f);
assign(g,fo);rewrite(g);
readln(f,n);
for i:=1 to n do
begin
 readln(f,s);
 a[i]:=s[1];
 for j:=length(s) downto 1 do
  if s[j]=' ' then break;
  t:=copy(s,j+1,length(s)-j);
  c[i]:=t;
  t1:=copy(s,3,j-3);
  b[i]:=t1;
  end;
end;
procedure tim;
var  i,j:longint; t:string;
begin
for i:=1 to n-1 do
 for j:=i+1 to n do
if (a[i]>a[j]) or ((a[i]=a[j]) and (c[i]>c[j])) then
begin
t:=a[i];
a[i]:=a[j];
a[j]:=t;
t:=c[i];
c[i]:=c[j];
c[j]:=t;
t:=b[i];
b[i]:=b[j];
b[j]:=t;
end;
for i:=1 to n do
writeln(g,a[i],' ',b[i],' ',c[i]);
end;
begin
nhap;
tim;
close(f);
close(g);
end.
end; 