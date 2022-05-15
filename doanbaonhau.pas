const fi='doanbaonhau.inp';
	  fo='doanbaonhau.out';
var a,b,c: array [1..100] of longint;
	f,g:text;
	n:longint;
procedure nhap;
var i:longint;
begin
	assign(f,fi);reset(f);
	assign(g,fo);rewrite(g);
	readln(f,n);
	for i:=1 to n do
		readln(f,a[i],b[i]);
end;

function max(a,b:longint):longint;
begin
	if a>b then max:=a else max:=b;
end;

procedure tim;
var i,j,t,maxt:longint;
begin
	for i:=1 to n-1 do
		for j:=i+1 to n do
		if (b[i]>b[j]) or ((b[i]=b[j]) and (a[i]<a[j])) then
		begin
			t:=b[i];
			b[i]:=b[j];
			b[j]:=t;
			t:=a[i];
			a[i]:=a[j];
			a[j]:=t;
		end;
	for i:=1 to n do
		c[i]:=1;
	for i:=2 to n do
	for j:=1 to i-1 do
	if (a[j]>=a[i]) then c[i]:=max(c[j]+1,c[i]);
	maxt:=-maxlongint;
	for i:=1 to n do
	if c[i]>maxt then maxt:=c[i];
	write(g,maxt);
end;
begin
	nhap;
	tim;
	close(f);
	close(g);
end.