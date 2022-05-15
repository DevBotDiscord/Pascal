const
	fi = 'input21.inp';
	fo = 'output21.out';
var f,g:text;
	m,n:Longint;
	a:array[1..100,1..100] of longint;
	maxcot,mincot:array[1..100] of longint;
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
procedure tim;
var i,j,max,min,d:longint;
begin
	d:=0;
	for j:=1 to n do
	begin
	max:=-maxlongint;
	min:= maxlongint;
	for i:=1 to m do
	begin
		if a[i,j]>max then max:=a[i,j];
		if a[i,j]<min then min:=a[i,j];
	end;
	maxcot[j]:= max ;
	mincot[j]:=min;
	end;
	for i:=1 to m do
	begin
		max:=-maxlongint;
		min:= maxlongint;
		for j:=1 to n do 
		begin
		if a[i,j]>max then max:=a[i,j];
		if a[i,j]<min then min:=a[i,j]; 
		end;
		for j:=1 to n do
		if (max=mincot[j]) or (min=maxcot[j]) then 
		begin
			d:=d+1;
			write(g,' ',i,' ',j);
		end;
	end;
	writeln(g);
	writeln(g,d);
end;
begin
	nhap;
	tim;
	close(f);
	close(g);
end.