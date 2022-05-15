const
	fi = 'input55.inp';
	fo = 'output55.out';
var f,g:text;
	k:longint;
procedure nhap;
begin
assign(f,fi);reset(f);
assign(g,fo);rewrite(g);
readln(f,k);
end;
function kt(n:longint):boolean;
var s1,s2,t:string;
begin
str(n,s1);
str(n*n,s2);
t:= copy(s2,length(s2)-length(s1)+1,length((s1)));
	if s1<> t then kt:= false else kt:= true;
end;
procedure tim;
	var i:longint;
	begin
		for i:=1 to trunc(sqrt(k)) do 
		if kt(i)=true then writeln(g,i,' ',i*i);
	end;
begin
	nhap;
	tim;
	close(f);
	close(g);
end.