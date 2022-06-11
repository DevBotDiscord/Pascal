const fi='hoahoc.inp';
      fo='hoahoc.out';
var s:string;
   f,g:text;
   a:array[1..100] of longint;
procedure nhap;
begin
	assign(f,fi);reset(f);
	assign(g,fo);rewrite(g);
	readln(f,s);
end;
procedure tima;
var i,d:longint;
begin
	d:=0;
	for i:=1 to length(s) do
	if s[i] in ['A'..'Z'] then inc(d);
	writeln(g,'So nguyen to: ',d);
end;
procedure timb;
var i,d1,kq,k,dem:longint; t:string;
begin
	dem:=0;
	for i:=1 to length(s) do
	if s[i] in ['1'..'9'] then
	begin
	inc(dem);
	val(s[i],a[dem],kq);
	end;
	d1:=0;
	for i:=1 to dem do
	d1:=d1+a[i];
	write(g,'So nguyen tu: ',d1);
end;
begin
	nhap;
	tima;
	timb;
	close(f);
	close(g);
end.