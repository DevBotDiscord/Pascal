const
	fi = 'input23.inp';
	fo = 'output33.out';
var f,g:text;
	n:Longint;
	a:array[0..100,0..100] of longint;
procedure nhap;
begin
assign(f,fi);reset(f);
assign(g,fo);rewrite(g);
readln(f,n);
end;
procedure tim;
var i,j,k:longint;
begin
	fillchar(a,sizeof(a),0);
	i:=1;
	j:=n div 2+1;
	a[i,j]:=1;
	for k:=2 to n*n do 
	begin
		i:=i-1;
		j:=j+1;
		if (i<1) and (j<=n) then i:=n
		else
		if (i>=1) and (j>n) then j:=1
		else 
		if a[i,j]<>0 then
		begin
			i:=i+2;
			j:=j-1;
		end
		else 
		if (i<1) and (j>n)
		then
		begin
		i:=2;j:=n;
		end;
		a[i,j]:=k;
	end;
	for i:=1 to n do 
	begin
		for j:=1 to n do 
		write(g,a[i,j],' ');
		writeln(g);
	end;
end;
begin 
nhap;
tim;
close(f);
close(g);
end.

