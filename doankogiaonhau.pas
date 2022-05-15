const fi='bai4.inp';
	  fo='bai4.out';
var f,g:text;
	n:longint;
	a,b,c,d:array [1..100] of longint;
procedure nhap;
var i:longint;
begin
	assign(f,fi); reset(f);
	assign(g,fo); rewrite(g);
	readln(f,n);
	for i:=1 to n do
	readln(f,a[i],b[i]);
end;

procedure tim;
var i,j,tam,r,dem:longint;
begin
	for i:=1 to n do
	c[i]:=i;

	for i:=1 to n-1 do
		for j:=i+1 to n do
			if (b[i]>b[j]) or ((b[i]=b[j]) and (a[i]>a[j])) then
			begin
				tam:=b[i];
				b[i]:=b[j];
				b[j]:=tam;
				tam:=a[i];
				a[i]:=a[j];
				a[j]:=tam;
				tam:=c[i];
				c[i]:=c[j];
				c[j]:=tam;
			end;

	dem:=1;
	r:=b[1];
	d[1]:=c[1];
	for i:=2 to n do
		if r<a[i] then
		begin
			dem:=dem+1;
			d[dem]:=c[i];
			r:=b[i];
		end;

	if dem=1 then writeln(g,'0') else
	begin
		writeln(g,dem);
		for i:=1 to dem do
		writeln(g,d[i]);
	end;
end;

begin
	nhap;
	tim;
	close(f);
	close(g);
end.