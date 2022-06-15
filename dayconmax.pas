const fi='daycon.inp';
	  fo='daycon.out';
var f,g:text;
	n:longint;
	a:array[1..100] of longint;
procedure nhap;
var i:longint;
begin
	assign(f,fi); reset(f);
	assign(g,fo); rewrite(g);
	readln(f,n);
	for i:=1 to n do 
	read(f,a[i]);
end;
procedure xuli;
var 
begin 
	