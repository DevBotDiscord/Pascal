const fi='doben.inp';
	  fo='doben.out';
var f,g:text;
	d,n:longint;
function tich(x:Longint):longint;
var s,a:Longint;
begin 
	s:=1;
	repeat 
		a:=x mod 10;
		x:=x div 10;
		s:= s *a;
	until x=0;
	tich:=s;
end;
procedure nhap;
begin
	assign(f,fi);reset(f);
	assign(g,fo);rewrite(g);
	readln(f,n);
end;
procedure xuli;
begin
	d:=0;
	while n>9 do 
	begin 
		inc(d);
		n:=tich(n);
	end;
	write(g,d);
end;
begin 
	nhap;
	xuli;
	close(f);
	close(g);
end.