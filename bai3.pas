const fi='bai3.inp';
fo='bai3.out';
var f,g:Text;
s:string;
procedure nhap;
begin
	assign(f,fi);
	reset(F);
	assign(g,fo);
	rewrite(G);
	readln(f,s);
end;
procedure kiemtra;
var k,i,n,kq,t,t1:longint;
begin
	t:=0;
	for i:=1 to length(S) do
	begin
	if s[i]<>'?' then
	begin
	val(s[i],n,kq);
	t:=t+i*n;
	end
	else
	k:=i;
	end;
	t1:=t;
	for i:=0 to 9 do
	begin
	t:=t1;
	t:=t+k*i;
	if t mod 11=0 then
	begin
	write(g,i);
	break;
	end;
	end;
end;
begin
nhap;
kiemtra;
close(f);
close(G);
end.