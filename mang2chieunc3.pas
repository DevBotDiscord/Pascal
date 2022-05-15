const
	fi = 'input4.inp';
	fo = 'output4.out';
var f,g:text;
	n:longint;
	a:array[1..100,1..50] of longint;
procedure nhap;
var i,j:longint;
begin
	assign(f,fi);
	reset(f);
	assign(g,fo);rewrite(g);
	readln(f,n);
	for i:=1 to n do
	for j:=1 to n do
	read(f,a[i,j]);
end;
procedure blA;
var d,s,i,j:longint; tbc:real;
begin
	s:=0;
	d:=0;
	for i:=1 to n do
	for j:=1 to n Do
	if i=j then
	begin
		s:=s+a[i,j];
		d:=d+1;
	end;
	tbc:=s/d;
	writeln(g,tbc:2:0);
end;

procedure blB;
var i,j:longint;
	ok:Boolean;
begin
	ok:= true;
	for i:=1 to n do 
	if a[i,j]<>a[j,i] then
	begin
		ok:= false;
		break;
	end;
if ok=true then writeln(g,1) else writeln(g,0);
end;

begin
	nhap;
	blA;
	blB;
	close(f);
	close(g);
end.