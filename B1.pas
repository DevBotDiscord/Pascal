const fi='bail.inp';
	  fo='bail.out';
var f,g: text; a, b:integer;
procedure nhap;
begin
	assign(f,fi); reset(f);
	assign(g,fo); rewrite(g);
	readln(f,a,b);
end;
function dao(n: integer): integer; var d,du: integer;
begin
	d:=0;
	while n<> 0 do
	begin
		du:= n mod 10;
		n:= n div 10; 
		d:= d*10+du;
	end;
	dao:=d;
end;
function uoc (a,b: integer):integer;
begin
	while a<>b do
		if a>b then a:=a-b else b:=b-a;
		uoc:=a;
end;
procedure tim;
var i:integer; kt:boolean;
begin
	kt:=false; 
	for i:=a to b do
	if uoc(i,dao(i))=1 then
	begin
	write(g,i,' '); kt:=true;
	end;
	if kt=false then write(g,-1);
end;
begin
	nhap;
	tim;
	close(f);
	close(g);
end.