const fi='chuandoanhoten.inp';
	  fo='chuandoanhoten.out';
var f,g:text;
	c:string;
	n:longint;

procedure tim;
var i,d,j:longint;
begin
	while c[1]=' ' do delete(c,1,1);
	while c[length(c)]=' ' do delete(c,length(c),1);
	while pos('  ',c)>0 do delete(c,pos(' ',c),1);
	c[1]:=upcase(c[1]);
	for d:=2 to length(c) do
	c[d]:= lowercase(c[d]);
	for j:=1 to length(c) do 
	if c[j]=' ' then c[j+1]:=upcase(c[j+1]);
	writeln(g,c);
end;
procedure nhap;
var i:longint;
begin
	assign(f,fi); reset(f);
	assign(g,fo); rewrite(g);
	readln(f,n);
	for i:=1 to n do 
	begin 
		readln(f,c);
		tim;
	end;
end;

begin 
	nhap;
	close(f);
	close(g);
end.