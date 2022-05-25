const fi='bai3.inp';
	  fo='bai3.out';
var f,g:text;
	n,h:longint;
procedure nhap;
begin
	assign(f,fi);reset(f);
	assign(g,fo);rewrite(g);
	read(f,n); read(f,h);
	writeln(n);
	writeln(h); 
end;
procedure xuli;
var i,n
begin 
nhap;
close(f);
close(g);
end.
	