const
	fi = 'input44.inp';
	fo = 'output44.out';
var f,g:text;
	d,y,m:Longint;
	a:array[1..100] of longint;
procedure nhap;
begin
assign(f,fi);reset(f);
assign(g,fo);rewrite(g);
readln(f,d,m,y);
end;

procedure xuli;
var i,d1,d2,m1,m2,y1,y2:longint;
begin
	for i:=1 to 12 do 
	case i of 
	1,5,7,8,10,12: a[i]:=31;
	4,6,9,11: a[i]:=30;
	2: if (y mod 400=0) or ((y mod 4=0) and (y mod 100<>0)) then a[i]:=29 else a[i]:=28;
end;
d1:=d-1; m1:=m; y1:=y;
d2:=d+1; m2:=m; y2:=y;
if d=1 then if m=1 then
	begin
		d1:=31; m1:=12; y1:=y-1;
		end
		else 
		begin
			d1:=a[m-1]; m1:=m-1;
		end;
if d=a[m] then
if m=12 then 
begin
 	d2:=1;
 	m2:=1;
 	y2:=y+1;
 	end 
 	else
 	begin
 	d2:=1; m2:=m+1;
 end;
 write(g,d1,' ',m1,' ',y1);
 writeln(g);
 write(g,d2,' ',m2,' ',y2);
	end;
begin
	nhap;
	xuli;
	close(f);
	close(g);
end.