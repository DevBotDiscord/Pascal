const fi='bai4.inp';
fo='bai4.out';
var f,g:text;
s1,s2:string;
procedure nhap;
begin
assign(f,fi);
reset(f);
assign(g,fo);
rewrite(g);
readln(f,s1);
readln(f,s2);
end;
function cong(s1,s2:string):string;
var i,du,nho,t,k,kq,x1,x2:longint;
ketqua,p,nho1:string;
begin
t:=0;
nho:=0;
ketqua:='';
while length(s1)<length(s2) do
s1:='0'+s1;
while length(s2)<length(s1) do
s2:='0'+s2;
for i:=length(s1) downto 1 do
begin
val(s1[i],x1,kq);
val(s2[i],x2,kq);
t:=nho+x1+x2;
nho:=t div 10;
k:=t mod 10;
str(k,p);
ketqua:=p+ketqua;
end;
if nho<>0 then begin str(nho,nho1); ketqua:=nho1+ketqua;     end;
cong:=ketqua;
end;
function tru (s1,s2:string):string;
var i,du,nho,k,kq,t1,t2:longint;
ketqua,l,nho1:string;
begin
t:=0;
nho:=0;
ketqua:='';
while length(s1)<length(s2) do
s1:='0'+s1;
while length(s2)<length(s1) do
s2:='0'+s2;
for i:=length(s1) downto 1 do
begin
val(s1[i],t1,kq);
val(s2[i],t2,kq);
t2:=t2+nho;
if t1<t2 then nho:=1 else nho:=0;
t1:=nho*10+t1;
t:=t1-t2;
k:=t mod 10;
str(k,l);
ketqua:=l+ketqua;
end;
hieu:=ketqua;
end;
function nhan1(s1:string;n:longint):string;
var i,x1,kq,nho,t,p:longint;
ketqua,p2:string;
begin
nho:=0;
ketqua:='';
for i:=length(s1) downto 1 do
begin
val(s1[i],x1,kq);
t:=x1n+nho;
nho:=t div 10;
p:=t mod 10;
str(p,p2);
ketqua:=p2+ketqua;
end;
if nho<>0 then begin str(nho,p2);
ketqua:=p2+ketqua;  end;
nhan1:=ketqua;
end;
function nhan (s1,s2:string):string;
var j,i,d,nho,k,kq,x1,x2:longint;
ketqua,p,nho1,t:string;
begin
d:=0;
nho:=1;
ketqua:='0';
for i:=length(s2) downto 1 do
begin
val(s2[i],x2,kq);
t:=nhan1(s1,x2);
for j:=1 to d do
t:=t+'0';
d:=d+1;
ketqua:=cong(t,ketqua);
end;
nhan:=ketqua;
end;
begin
nhap;
writeln(g,cong(s1,s2));
writeln(g,tru(s1,s2));
writeln(g,nhan(s1,s2));
writeln(g,nhan1(s1,5));
close(f);
close(g);
end.