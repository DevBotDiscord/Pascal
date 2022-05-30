const fi='bai1.inp';
	  fo='bai1.out';
var a,b,c: array[1..100] of integer;
	n,i,j,t: integer;
	f,g:text;
Procedure nhap;
begin
assign(f,fi);reset(f);
assign(g,fo);rewrite(g);
readln(f,n);
for i:=1 to n do read(f,a[i]);
readln(f);
for i:=1 to n do read(f,b[i]);
end;
Procedure xuli;
begin
c:=a;
k:=n;
for i:=1 to n do 
begin 
	k:=k+1;
	b[k]:=b[i];
end;
for i:=1 to n k-1 do 
for j:=i+1 to k do 
	if c[i]>c[j] then
	begin 
	u:=c[i];
	c[i]:=c[j];
	c[j]:=u
	end;
for 
begin
nhap;
xuli;
close(f);
close(g);
end.
