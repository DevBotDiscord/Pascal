const fi='bai1.inp';
	  fo='bai1.out';
var f,g:text;
	n:longint;
	a:array[1..1505]of longint;
procedure nhap;
begin
	assign(f,fi);reset(F);
	assign(g,fo);rewrite(G);
	readln(f,n);
end;
function kt(n:longint):boolean;
var i:longint;
begin
	if n<2 then exit(false);
	for i:=2 to trunc(sqrt(n)) do
	if n mod i = 0 then exit(false);
	exit(true);
// end;
// function kt1(n:longint):boolean;
// var i,t:longint;
// begin
// if n mod i = 0 then inc(t);
// if t>0 then exit(true);
// exit(false);
// end;    
procedure tim;
var i,j,t,d:longint; ok:boolean;
begin
d:=1;
a[1]:=n;
for i:=n-1 downto 1 do
begin
if kt(i)=true then
begin
inc(d);
a[d]:=i;
end   
else
begin
ok:=false;
for j:=1 to d-1 do
if a[j] mod i = 0 then ok:=true;
if ok=true then begin
inc(d);
a[d]:=i;
end;
end;
end;
for i:=1 to d do
write(g,a[i],' ');

end;
begin
nhap;
tim;
close(f);
close(g);
end.