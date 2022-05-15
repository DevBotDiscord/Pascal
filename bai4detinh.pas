const fi='bai4.inp';
	  fo='bai4.out';
var f,g:text;
	n:longint;
	a:array[1..100,1..100] of longint;
	l:array[0..100,0..100] of longint;
procedure nhap;
var i,j:longint;
begin
	assign(f,fi);
	reset(f);
	assign(g,fo);
	rewrite(g);
	readln(f,n);
	for i:=1 to n do
	for j:=1 to i do
	read(f,a[i,j]);
end;
function max(a,b:longint):longint;
begin
	if a>b then exit(a) else exit(b);
	end;
	procedure kiemtra;
	var i,j,max1:longint;
	begin
	max1:=-maxlongint;
	l[1,1]:=a[1,1];
	for i:=2 to n do
	l[0,i]:=0;
	for i:=2 to n do
	for j:=1 to n do
	l[i,j]:=max(l[i-1,j-1]*a[i,j],l[i-1,j]*a[i,j]);
	for i:=1 to n do
	for j:=1 to n do
	if l[i,j]>max1 then max1:=l[i,j];
	write(g,max1);
end;
begin
	nhap;
	kiemtra;
	close(f);
	close(g);
end.