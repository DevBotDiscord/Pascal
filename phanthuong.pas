const fi='bai4.inp';
	  fo='bai4.out';
var f,g:text;
	
procedure nhap;
begin 
	n:=0;
	assign(f,fi); reset(f);
	assign(g,fo); rewrite(g);
	while not eof