const fi='biendoimang.inp';
      fo='biendoimang.out';
var f,g:text;
    n:longint;
    a,b:array [1..100] of longint;
procedure nhap;
var i:longint;
begin
	assign(f,fi); reset(f);
	assign(g,fo); rewrite(g);
	readln(f,n);
	for i:=1 to n do
		read(f,a[i]);
end;

procedure tim;
var i,j,tam,d:longint;
begin
	for i:=1 to n-1 do
		for j:=i+1 to n do
			if a[i]>a[j] then
				begin
					tam:=a[i];
					a[i]:=a[j];
					a[j]:=tam;
				end;
	d:=1;
	b[d]:=a[1];
	for i:=2 to n do
	if a[i]<>a[i-1] then
		begin
		inc(d);
		b[d]:=a[i];
		end;
	writeln(g,d);
	for i:=1 to d do
	write(g,b[i],' ');
end;

begin
	nhap;
	tim;
	close(f);
	close(g);
end.