const fi='bai1,3.inp';
	fo='bai1,3.out';
var f,g:text; s:string;
procedure nhap;
begin
	assign(f,fi);reset(f);
	assign(g,fo);rewrite(g);
	readln(f,s);
end;
procedure tim;
var d,j,i:longint;
	t:char;
begin
	d:=1;
	for i:=1 to length(s)-1 do
	for j:=i+1 to length(s) do
	if s[i]>s[j] then
		begin
			t:=s[i];
			s[i]:=s[j];
			s[j]:=t;
		end;
	for i:=2 to length(s) do
	if s[i]<>s[i-1] then d:=d+1;
	writeln(g,d);
end;
begin
nhap;
tim;
close(f);
close(g);
end.