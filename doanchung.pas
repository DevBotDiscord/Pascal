const fi='nenxau.inp';
      fo='nenxau.out';
var s:string;
    f,g:text;
    x:array['A'..'Z'] of longint;
procedure nhap;
begin
	assign(f,fi);reset(f);
	assign(g,fo);rewrite(g);
	readln(f,s);
end;
procedure fia;
var t:char; i:longint;
	begin
		for t:='A' to 'Z' do
			x[t]:=0;
		for i:=1 to length(s) do
			if s[i] in ['A'..'Z'] then x[s[i]]:=x[s[i]]+1;
			for t:='A' to 'Z' do
			if x[t]<>0 then writeln(g,t,x[t]);
		end;
procedure fib;
var i:longint; r:string;
begin
	r:='';
	for i:=1 to length(s) do
	if s[i] in ['A'..'Z'] then r:=r+s[i];
	write(g,r);
end;
begin
	nhap;
	fia;
	fib;
	close(f);
	close(g);
end.