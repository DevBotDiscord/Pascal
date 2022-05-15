program bt;
const fi='bai.inp';
      fo='bai.out';
var f,g:text; n,m,p:longint;   a:array[1..100] of longint;

 procedure nhap;
 var i:longint;
 begin
 assign(f,fi);reset(f);
 assign(g,fo);rewrite(g);
 readln(f,n,m,p);
 for i:=1 to n do
 read(f,a[i]);
 end;

 procedure caua;
 var  i,j,t:longint;
 begin
 for i:=1 to n-1 do
 for j:=i+1 to n do
 if a[j]<a[i] then
 begin
 t:=a[i];
 a[i]:=a[j];
 a[j]:=t;
 end;
 for i:=1 to n do
 write(g,a[i],' ');
 writeln(g);
 end;

procedure  caub;
var i,vt:longint;
begin
for i:=1 to n do
if a[i]>m then
begin
vt:=i;//luu vi tri
break;
end;
for i:=n downto vt do   //dich cac phan tu phia sau ra mot vi tri
a[i+1]:=a[i];
a[vt]:=m;
for i:=1 to n+1 do
write(g,a[i],' ');
writeln(g);
end;

procedure cauc;
var i,j,vt:longint;
begin
for i:=1 to n do
if a[i]=p then
begin
        vt:=i;
        break;
end;

while a[vt]=p do
begin
        for j:=vt to n do  //dich len truoc mot vi tri

                a[j]:=a[j+1];
                n:=n-1;
end;

for i:=1 to n do
write(g,a[i],' ');

end;

 begin
 nhap;
 caua;
 caub;
 cauc;
 close(f);
 close(g);
 end.