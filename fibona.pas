const fi='fibona.inp';
      fo='fibona.out';
max=1000000000;
var f1,g:text; n:longint; f:array[1..44] of longint;
procedure tim;
var i,j,t:longint;
begin
f[1]:=1;
f[2]:=2;
i:=2;
while f[i]<max  do
begin
inc(i);
f[i]:=f[i-1]+f[i-2];
end;
t:=0;
i:=0;
while t<n do
begin
inc(i);
t:=t+f[i];
end;
for j:=i+1 to 44 do
f[j]:=0;
while t>n do
begin
j:=t-n;
for i:=0 to 43 do
if f[i+1]>j then break;
t:=t-f[i];
f[i]:=0;
end;
for i:=1 to 44 do
if f[i]>0 then write(g,f[i],' ');
end;
procedure nhap;
begin
assign(f1,fi);reset(f1);
assign(g,fo);rewrite(g);
while not eof(f1) do
begin
readln(f1,n);
tim;
writeln(g);
end;
end;
begin
nhap;
tim;
close(f1);
close(g);
end.