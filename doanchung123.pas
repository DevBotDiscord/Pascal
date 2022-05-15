const fi='bai4.inp';
	  fo='bai4.out';
var f,g:text;
	x,y:string;
	m,n:longint;
	k:array [0..100,0..100] of longint;
procedure nhap;
var i:longint;
begin
	assign(f,fi); reset(f);
	assign(g,fo); rewrite(g);
	readln(f,x);
	readln(f,y);
end;

procedure tim;
var i,j,max,vtc,vtc1:longint;
begin
	m:=length(x);
	n:=length(y);
	for i:=0 to n do
		k[0,i]:=0;
	for i:=0 to m do
		k[i,0]:=0;
	for i:=1 to m do
		for j:=1 to n do
		begin
			if x[i]=y[j] then
			k[i,j]:=k[i-1,j-1]+1 else
			k[i,j]:=0;
		end;
	max:=-maxlongint;
	for i:=1 to m do
		for j:=1 to n do
		if k[i,j]>max then
		begin
		max:=k[i,j];
		vtc:=i; 
		vtc1:=j;  
		end;
	writeln(g,vtc-max+1,' ',vtc);
	writeln(g,vtc1-max+1,' ',vtc1);
	for i:=vtc-max+1 to vtc do
		write(g,x[i]);
end;
begin
	nhap;
	tim;
	close(f);
	close(g);
end.