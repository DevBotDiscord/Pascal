const fi='bai3.inp';
	  fo='bai3.out';
var n:longint;
	a:array[1..100] of longint;
	f,g:text;
procedure nhap;
begin
	assign(f,fi);reset(f);
	assign(g,fo);rewrite(g);
	readln(f,n);
end;
procedure tim;
var i,t,k:longint;
begin
	a[1]:=1;
	a[2]:=1;
	i:=2;
	While a[i]<=n do
	begin
		inc(i);
		a[i]:=a[i-1]+a[i-2];
	end;
	k:=i-1;
	for i:=k downto 1 do
		if a[i]<= n then
		begin
			write(g,a[i],' ');
			n:=n-a[i];
		end;
end;
begin
nhap;
tim;
close(f);
close(g);
end.