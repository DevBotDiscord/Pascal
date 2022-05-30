const fi='bai2.inp';
      fo='bai2.out';
var n,d:longint;
    s:string; f,g:text;
procedure nhap;

var i,t,kq,s1:longint;
begin
s1:=0;
assign(f,fi);reset(f);
assign(g,fo);rewrite(g);
readln(f,n,d);
for i:=1 to n do
begin
readln(f,s);
val(s[3],t,kq);
s1:=s1+t;
end;
write(g,d*s1);
end;
begin
nhap;
close(f);
close(g);
end.