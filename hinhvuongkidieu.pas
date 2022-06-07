const fi='hvuong.inp';
	  fo='hvuong.out';
var f,g:text;
	n:longint;
procedure nhap;
begin 
	assign(f,fi); reset(f);
	assign(g,fo); rewrite(g);
	readln(f,n);
end;
procedure xuli;