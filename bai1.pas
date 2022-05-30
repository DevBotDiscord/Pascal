const fi='bai1.inp';
	  fo='bai1.out';
var a,b,c: array[1..100] of integer;
	n,i,j: integer;
	f,g:text;
Procedure nhap;
begin
assign(f,fi);reset(f);
assign(g,fo);rewrite(g);
for i:=1 to n do 
	read(f,a[i]);
for i:=1 to n do
	readln(f,b[i]);
end;
Procedure xuli;
var i: byte;
begin
i:=1;
j:=1;
while i<= n do
begin
C[j]:=  A[i];
C[j+1]:=B[i];
j:=j+2;
i:=i+1;
end;
for i:=1 to 2*n do writeln(g,c[i]);
end;
begin
nhap;
xuli;
close(f);
close(g);
end.
