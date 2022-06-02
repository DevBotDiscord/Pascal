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
var 