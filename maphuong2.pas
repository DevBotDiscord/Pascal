const fi='maphuong.inp';
	  fo='maphuong.out';
var f,g:text;
	n:longint;
	a:array[1..100,1..100] of longint; 
procedure nhap;
begin 
	assign(f,fi); reset(f);
	assign(g,fo); rewrite(g);
	readln(f,n);
end;
procedure tim;
var i,j,k:longint;
begin
fillchar(a,sizeof(a),0);
i:=n;
j:=(n+1) div 2;
a[i,j]:=1;
for k:=2 to n*n do 
begin 
	inc(i);
	inc(J);
	if (i>n) and (j<=n) then i:=1
	else
	if (i<=n) and (j>n) then j:=1
	else 
	if(i>n) and(j>n) then 
	begin 
		i:=i-2;
		j:=j-1;
	end
	else
	if a[i,j]>0 then
	begin
		i:=i-2;
		j:=j-1;
	end;
	a[i,j]:=k;
	end;
	writeln(g,n);
	for i:=1 to n do 
	begin 
		for j:=1 to n do write(g,a[i,j],' ');
		writeln(g);
	end;
end;
begin 
	nhap;
	tim;
	close(f);
	close(g);
end.