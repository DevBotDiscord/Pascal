const
	fi = 'sapxep.inp';
	fo = 'sapxep.out';
var f,g:text;
	m,n:Longint;
	a:array[1..100,1..100] of longint;
	b:array[1..100] of longint;
procedure nhap;
var i,j:longint;
begin
assign(f,fi);reset(f);
assign(g,fo);rewrite(g);
readln(f,m,n);
for i:=1 to m do
for j:=1 to n do 
	read(f,a[i,j]);
end;
procedure kt;
var i,k,j,t:longint;
begin
	k:=0;
	for i:=1 to m do 
	for j:=1 to n do 
	begin
		k:=k+1;
		b[k]:=a[i,j];
	end;
	for i:=1 to k-1 do 
	for j:=1+i to k do 
	if b[i]>b[j] then 
	begin
		t:=b[i];
		b[i]:=b[j];
		b[j]:=t;
	end;
	k:=1;
	for i:=1 to m do
	if i mod 2 = 0 then
	for j:=n downto 1 do begin
		a[i,j]:=b[k];
		k:=k+1;
	end
	else for j:=1 to n do 
		begin
			a[i,j]:=b[k];
			k:=k+1;
		end;
	for i:=1 to m do 
	begin
	for j:=1 to n do 
	write(g,a[i,j],' ');
	writeln(g);
	end;
	end;
begin
	nhap;
	kt;
	close(f);
	close(g);
end.