const fi='doanchung.inp';
	  fo='doanchung.out';
var f,g:text;
	x,y:string;
procedure nhap;
begin 
	assign(f,fi);reset(f);
	assign(g,fo);rewrite(g);
	readln(f,x,y);
end;
procedure tim;
var i,j,max,vtc,vtc1:Longint;
