const fi='password.inp';
fo='password.out';
var f,g:text;
s:string;
l:longint;
procedure nhap;
  begin
       assign(f,fi);
       reset(f);
       assign(g,fo);
       rewrite(g);
       readln(f,s,l);
  end;
procedure timso;
var j,t,i,kq,n:longint;
s1:string;
a:array[1..500] of longint;
begin
t:=0;
for i:=1 to length(s) do
if (s[i]>='0') and (s[i]<='9') then
begin
t:=t+1;
val(s[i],n,kq);
a[i]:=n; 
end;
for i:=1 to n do 
if a[i]<a[i+1] then
end;
begin
nhap;
timso;
close(f);
close(g);
end.
