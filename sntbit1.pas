const fi='bai3.inp';
      fo='bai3.out';
var n,h:longint;
f,g:text;
procedure nhap;
begin
	assign(f,fi);reset(f);
	assign(g,fo);rewrite(g);
	readln(f,n,h);
end;
function kt(n:longint):boolean;
var i:longint;
begin
	if n<2 then exit(false);
	for i:=2 to trunc(sqrt(n)) do
	if n mod i = 0 then exit(false);
	exit(true);
end;
procedure tim;
var i,du,d:longint;   s:string;
begin
	d:=0;
	s:='';
	while n<>0 do
	begin
	du:=n mod 2;
	n:=n div 2;
	inc(D);
	end;
end;
begin
nhap;
tim;
close(F);
close(G);
end.