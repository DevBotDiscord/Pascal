const fi='anumber.inp';
fo='anumber.out';
var f,g:text;
n:longint;
procedure nhap;
begin
assign(f,fi);
reset(f);
assign(g,fo);
rewrite(g);
readln(f,n);
end;
procedure kiemtra;
begin
write(g,n,' ');
while n<>1 do
begin
if n mod 2=0 then n:=n div 2  else n:=(n*3)+1;
write(g,n,' ');
end;
end;
begin
nhap;
kiemtra;
close(f);
close(g);
end.

