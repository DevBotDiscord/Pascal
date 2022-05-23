const fi='bai2.inp';
	  fo='bai2.out';
	  bl=#32;
type KieuDoan=record x,d:longint; end;
	md1 = array [0..mn] of KieuDoan;
var c:md1;
	n:intger;
	f,g:text;
procedure nhap;
var i:integer;
begin 
	assign(f,fi);reset(f);
	assign(g,fo);rewrite(g);
	for i:=1 to n do readln(f,c[i].x,c[i].d);
end;