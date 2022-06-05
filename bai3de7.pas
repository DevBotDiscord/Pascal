const fi='bai3.inp';
	  fo='bai3.out';
var f,g:text;
	n,k:Longint;
	a:array[1.1000] of longint;
procedure nhap;
var i:Longint;
begin 
	assign(f,fi);reset(f);
	assign(g,fo);rewrite(g);
	readln(f,n,k);
	for i:=1 to n do 
	read(f,a[i]);
end;
procedure xuli;
begin
	for i:=1 to n do 
	if 