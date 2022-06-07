const fi='giaohang.inp';
	  fo='giaohang.out';
var f,g:text;
	n:longint;
	a,b:array[1..1000] of longint;
procedure nhap;
var i,j:longint;
begin 
	assign(f,fi);reset(f);
	assign(g,fo);rewrite(g);
	readln(f,n);
	for i:=1 to n do
	for j:=1 to n do 
	readln(f,a[i],b[j]);
end;
procedure xuli;
var i,j,t,s:longint;
begin 
	for i:=1 to n-1 do 
	for j:=i+1 to n do 
	if a[i] > a[j] then 
	begin 
	t:=a[i];
	a[i]:=a[j];
	t:=b[i];
	b[i]:=b[j];
	b[j]:=t;
	end;
	s:=0;
	for i:=1 to n do 
	if s<a[i] then s:=s+b[i]+(a[i]-s)
	else s:=s +b[i];
	writeln(g,s);
end;
begin 
	nhap;
	xuli;
	close(f);
	close(g);
end.