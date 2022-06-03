
const fi='bai1.inp';
	  fo='bai1.out';
var f,g:text;
	m,n:Longint;
procedure nhap;
begin 
	assign(f,fi); reset(f);
	assign(g,fo);rewrite(g);
	readln(f,n,m);
end;
procedure xuli;
var s,i:integer;
begin 
	S:=0;
	for i:=1 to m do 
	begin 
	s:=s+(n mod 10);
	n:= n div 10;
	end;
	write(g,s);
end;
begin 
	nhap;
	xuli;
	close(f);
	close(g);
end.
