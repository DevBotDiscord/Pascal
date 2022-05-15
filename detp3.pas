const fi='dtp2.inp';
	  fo='dtp2.out';
var f,g:text;
	n,i,j:longint;
	a,b:array[0..101,0..101] of longint;
procedure nhap;
begin
	fillchar(a,sizeof(a),0);
	assign(f,fi);reset(f);
	assign(g,fo);rewrite(g);
	readln(f,n);
	for i:=1 to n do
	for j:=1 to n do 
	read(f,a[i,j]);
end;

procedure tim;
begin 
	// fillchar(b,sizeof(b),0);
	for i:=1 to n do 
	for j:=1 to n do 
	b[i,j]:=a[i-1,j-1]+a[i-1,j+1]+a[i+1,j-1]+a[i+1,j+1];
	for i:=1 to n do 
	begin
	for j:=1 to n do 
	write(g,b[i,j],' ');writeln(g);
	end;
	end;

begin
nhap;
tim;
close(f);
close(g);
end.