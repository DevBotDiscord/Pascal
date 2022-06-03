const fi='bai5kiemtra2.inp';
      fo='bai5kiemtra2.out';
var n:longint;
    f,g:text;
procedure nhap;
begin
	assign(f,fi);reset(f);
	assign(g,fo);rewrite(g);
	readln(f,n);
end;
function kt(n:longint):longint;
var t,d:longint;
begin
	t:=1;
	while n<>0 do
	begin
		d:=n mod 10;
		n:=n div 10;
		t:=t*d;
	end;
	kt:=t;
end;
function ktdb(n:longint):longint;
var d:longint;
begin
	d:=0;
	while n>10  do
	begin
		n:=kt(n);
		inc(d);
	end;
	ktdb:=d;
end;
procedure tim;
var max,i,t:longint;
begin
	max:=-maxlongint;
	for i:=1 to n do
		if max<ktdb(i) then
		begin
			max:=ktdb(i);
			t:=i;
		end;
	write(g,t);
end;
begin
	nhap;
	tim;
	close(f);
	close(g);
end.