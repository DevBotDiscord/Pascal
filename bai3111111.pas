const fi='bai3.inp';
	  fo='bai3.out';
var n,k:longint;
	s:string;    f,g:text;
	a:array[1..100] of string;
procedure nhap;
var i:longint;
begin
	assign(f,fi);reset(f);
	assign(g,fo);rewrite(g);
	readln(f,n,k);
	read(f,s);
end;
procedure tim;
var i,j,t:longint;  s1,t1:string;
begin
	t:=0;
	for i:=1 to n do
	begin
	s:=copy(s,2,n-1)+s[1];
	inc(t);
	a[t]:=s;
	end;
		for i:=1 to t-1 do
			for j:=i+1 to t do
				if a[i]>a[j] then
					begin
						t1:=a[i];
						a[i]:=a[j];
						a[j]:=t1;
					end;
	write(g,a[k]);
end;
begin
Nhap;
Tim;
close(f);
close(g);
end.