uses crt;
var a:array[1..100] of integer;
i,j,n,t:integer;
begin
clrscr;
write('nhap so pt cua a : ');readln(n);
write('nhap day a : ');
for i:=1 to n do readln(a[i]);
write('nhap so pt cua b : ');readln(n);
write('nhap day b : ');
for j:=i+1 to i+n do readln(a[j]);
n:=j;
for i:=1 to n-1 do
for j:=i+1 to n do
if a[i]>a[j] then
begin
t:=a[i];
a[i]:=a[j];
a[j]:=t;
end;
clrscr;
{--- in ket qua ---}
for i:=1 to n do write(a[i],' ');
readln;
end.