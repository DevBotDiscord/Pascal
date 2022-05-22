const fi='prime.inp';
fo='prime.out';
var f,g:text;
n:longint;
procedure nhap;
begin
	assign(f,fi);
	reset(f);
	assign(g,fo);
	rewrite(g);
	readln(f,n);
end;
function ngto(n:longint):boolean;
var i:longint;
begin
	if n<2 then exit(false);
	for i:=2 to trunc(sqrt(n)) do
	if n mod i=0 then exit(false);
	exit(True);
end;
procedure kiemtra;
var i,t,t1:longint;
begin
	for i:=1 to n div 2 do
	begin
	if ngto(i)=true then
	
	begin
		t:=n-i;
		if ngto(t)=true then
		 writeln(g,i,' ',t);
    end;
end;
end;
begin
	nhap;
	kiemtra;
	close(f);
	close(g);
end.