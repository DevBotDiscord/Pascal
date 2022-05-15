const fi='tuyensinhlop10.inp';
	  fo='tuyensinhlop10.out';
var f,g:text; n:longint;
	s:string;
procedure xuli;
var i,j,t,dem:longint;
	s1,ten,gt,sinh:string;
begin
	dem:=0;
	assign(f,fi);reset(f);
	assign(g,fo);rewrite(g);
	readln(f,n);
	writeln(g,'Mon thi chuyen:Tin hoc');
	writeln(g,'Thong tin thi sinh');
	for i:=1 to n do
	begin
		readln(f,s);
		for j:=length(s) downto 1 do
		if s[j]='#' then
		begin
		t:=j;
		break;
	end;
	s1:=copy(s,j+1,length(S)-j);
	if s1='Toan' then
	begin
		inc(dem);
		t:=pos('#',s);
		ten:=copy(s,1,t-1);
		delete(s,1,t);
		t:=pos('#',s);
		sinh:=copy(s,1,t-1);
		delete(s,1,t);
		t:=pos('#',s);
		gt:=copy(s,1,t-1);
		writeln(g,ten,'@',gt,'@',sinh);
	end;
	end;
	write(g,'Danh sach gom co:',dem,' thi sinh');
end;
begin
xuli;
close(f);
close(g);
end.