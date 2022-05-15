const
	fi = 'input23.inp';
	fo = 'output33.out';
var f,g:text;
	a,b,c:Longint;
	m:array[1..100] of longint;
procedure nhap;
begin
assign(f,fi);reset(f);
assign(g,fo);rewrite(g);
readln(f,a,b,c);
end;
procedure tim;
var i,s:longint;
begin
	s:=0;
	for i:=1 to 12 do 
	case i of
	1,3,5,8,10,12 : m[i]:=31;
	4,6,11 :m[i]:=30;
	2:if (c mod 400=0) or ((c mod 4=0)) and (c mod 100<>0)
	then m[i]:=29 else m[i]:=28;
	end;
	for i:=1 to b-1 do 
	s:=s+m[i];
	s:=s+a;
	writeln(g,s);
end;
begin
	nhap;
	tim;
	close(f);
	close(g);
end.