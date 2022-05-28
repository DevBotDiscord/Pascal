const
	fi = 'input22.inp';
	fo = 'output22.out';
var f,g:text;
	n:Longint;
	a:array[1..100,1..100] of longint;
procedure nhap;
var i,j:longint;
begin
	assign(f,fi);reset(f);
	assign(g,fo);rewrite(g);
	readln(f,n);	
	for i:=1 to 2*n do
		for j:=1 to 2*n do 
			read(f,a[i,j]);
end;
procedure kt;
var i,j,k:longint;
begin
	for i:=1 to n do 
		for j:=1 to n do 
		begin 
			k:=a[i,j];
			a[i,j]:=a[i,j+n];
			a[i,j+n]:=k;
		end;
	for i:=n+1 to n*2 do 
		for j:=1 to n do 
		begin
			k:=a[i,j];
			a[i,j]:=a[i,j+n];
			a[i,j+n]:=k;
		end;
	for i:=1 to n do 
		for j:=1 to n do 
		begin
			k:=a[i,j];
			a[i,j]:=a[i+n,j+n];
			a[i+n,j+n]:=k;
		end;
	for i:=1 to n*2 do 
	begin
		for j:=1 to n*2 do 
		write(g,a[i,j],' ');
		writeln(g);
	end;
end;
begin 
	nhap;
	kt;
	close(f);
	close(g);
end