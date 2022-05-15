const fi='';
      fo='';
var f,g:text;
    n:longint;
    a,b,e:array[1..100]of longint;

procedure nhap();
begin
      assign(f,fi);reset(f);
      assign(g,go);rewrite(g);
      // mày tự làm phần nhập
end;

procedure tim;
var s,i,j,t,d1:longint;
begin
for i:=1 to n do 
b[i]:=i;
for i:=1 to n-1 do 
for j:=i+1 to n do 
if v[i]<v[j] then
begin
t:=v[i];
v[i]:=v[j];
v[j]:=t;
t:=d[i];
d[i]:=d[j];
d[j]:=t;
t:=b[i];
b[i]:=b[j];
b[j]:=t;
end;
s:=0;
d1:=0;
for i:=1 to n do 
if d[i]<= m then
begin 
s:=s+d[i]*v[i];
m:=m-d[i];
e[b[i]]:=d[i];
end;
else 
begin
s:s+m*v[i];
e[b[i]]:=m;
m:=0;
end;
for i:=1 to n do 
writeln(g,e[i]);
write(g,s);
