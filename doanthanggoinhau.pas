const fi = 'doangoi.inp';
		fo = 'doangoi.out';
var f,g:text;
		n:longint;
		a,b,c:array[1..1000] of longint;
procedure input;
var i:longint;
begin
	assign(f,fi);reset(f);
	assign(g,fo);rewrite(g);
	readln(f,n);
 for i := 1 to n do
	readln(f,a[i],b[i]);
end;
procedure output;
var i,j,t,k:longint ;
begin
k:=-maxlongint ;
 for i:=1 to n-1 do
	for j:=i+1 to n do
	 if b[i]>b[j] then
		begin
		 t:=b[i];
		 b[i]:=b[j];
		 b[j]:=t;
		 t:=a[i];
		 a[i]:=a[j];
		 a[j]:=t;
		end;
 for i:=1 to n do
	begin
	 c[i]:=1;
	 for j:=1 to i-1 do
		if a[i]=b[j] then
		 if c[i]<c[j]+1 then c[i]:=c[j]+1;
	end;
 for i:=1 to n do
	if c[i]>k then k:=c[i];
 write(g,k);
end;
begin
 	input ;
 	output ;
	close(f);
	close(g);
end .