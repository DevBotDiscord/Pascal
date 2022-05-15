const
	fi='bai3dt.inp';
	fo='bai3dt.out';
var d,m,y,n,d1,m1:longint;
	f,g:text;
procedure nhap;
begin
	assign(f,fi);reset(f);
	assign(g,fo);rewrite(g);
	read(f,d,m,y);
	read(f,n);
end;

function sn(mt,yt:longint):longint;
var dt:longint;
begin
	case tm of 
	1,3,4,5,6,7,8,10,12: dt:=31;
	4,9,11: dt:=30;
	2: if (yt mod 4 = 0)
end