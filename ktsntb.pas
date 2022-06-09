const fi='snt.inp';	
	  fo='snt.out';
var f,g:text;
	n:longint;
	a,b:array[1..1000]of longint;
procedure nhap;
var i:longint;
begin 
	assign(f,fi);reset(f);
	assign(g,fo);rewrite(g);
	readln(f,n);
	for i:=1 to n do 
	read(f,a[i]);
end;
function prime(n:integer):boolean;
var i:longint;
begin
	if n<2 then exit(false);
	for i:=2 to trunc(sqrt(n)) do
	if n mod i=0 then exit(false);
	exit(True);
end;
function snt(i,j:longint):boolean;
var k:longint;
begin
	for k:=i to j do 
	if  
end;