const fi='bai2.inp';
	  fo='bai2.out';
var b:array[0..10000] of longint;
	a:array[1..100] of longint;
	n,k:longint;
	f,g:text;
procedure nhap;
var i:longint;
begin
	assign(f,fi);reset(f);
	assign(g,fo);rewrite(g);
	read(f,n,k);
	for i:=1 to n do
	read(f,a[i]);
end;
procedure tim;
var i,j:longint; ok:boolean;
begin
	fillChar(b,sizeof(b),0);
	for i:=1 to n do
	inc(b[a[i]]);
	ok:=false;
	for i:=0 to 10000 do
	if (b[i]>=k) then
	begin
	write(g,i,' ');
	ok:=true;
	end;
	if ok=false then write(g,'-1');
end;
begin
	nhap;
	tim;
	close(f);
	close(g);
end.
