const fi='taphop.inp';
fo='taphop.out';
var f,g:text;
var a,b,c,d,e:array[1..5000] of longint;
m,n:longint;
procedure input;
begin
m:=0;
n:=0;
assign(f,fi);
reset(f);
assign(g,fo);
rewrite(g);
while not eoln(f) do
begin
n:=n+1;
read(f,a[n]);
end;
readln(f);
while not eoln(f) do
begin
m:=m+1;
read(f,b[m]);
end;
end;
function check1(x:longint):boolean;
var i:longint;
begin
for i:=1 to m do
if b[i]=x then exit(true);
exit(false);
end;
function check(x:longint):boolean;
var i:longint;
begin
for i:=1 to n do
if a[i]=x then exit(true);
exit(false);
end;
procedure out1;
var i,v,j,u:longint;
begin
c:=a;
v:=n;
for i:=1 to m do
if check(b[i])=false then
begin
v:=v+1;
c[v]:=b[i];
end;
for i:=1 to v-1 do
for j:=i+1 to v do
if c[i]>c[j] then
begin
u:=c[i];
c[i]:=c[j];
c[j]:=u;
end;
for i:=1 to v do
write(g,c[i],' ');
writeln(g);
end;
procedure out2;
var i,k,u,j:longint;
begin
k:=0;
for i:=1 to m do
if check(b[i])=true then begin k:=k+1; d[k]:=b[i]; end;
for i:=1 to k-1 do
for j:=i+1 to k do
if d[i]>d[j] then
begin
u:=d[i];
d[i]:=d[j];
d[j]:=u;
end;
for i:=1 to k do
write(g,d[i],' ');
if k=0 then writeln(g,'#');
writeln(g);
end;
procedure out3;
var i,j,u,k:longint;
begin
k:=0;
for i:=1 to  n do
if  check1(a[i])=false then begin k:=k+1; e[k]:=a[i]; end;
for i:=1 to k-1 do
for j:=i+1 to k do
if e[i]>e[j] then
begin
u:=e[i];
e[i]:=e[j];
e[j]:=e[i];
end;
for i:=1 to k do
write(g,e[i],' ');
if k=0 then writeln(g,'#');
end;
begin
input;
out1;
out2;
out3;
close(f);
close(g);
end.