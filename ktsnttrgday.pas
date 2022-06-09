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
procedure xuli;
var i,d:longint;
	ok:boolean;
begin 
	d:=0;
	ok:=false;
	for i:=1 to n do 
	if prime(a[i]) then begin 
	ok:= true;
	inc(d);
	b[d]:=a[i];
	end;
	if ok=true then begin for i:=1 to d do 
							write(g,b[i],' '); end
	else writeln(g,'0');
end;
begin 
	nhap;
	xuli;
	close(f);
	close(g);
end.