const fi='tunhieunhat.inp';
	  fo='tunhieunhat.out';
var f,g:text;
	s:string;
procedure nhap;
begin
	assign(f,fi);reset(f);
	assign(g,fo);rewrite(g);
	readln(f,s);
end;
procedure tim;
var i,j,max,d:longint;
	maxtu,x:string;
begin
	max:=-maxlongint;
	while s[1]=' ' do delete(s,1,1);
	while s[length(s)]=' ' do delete(s,length(s),1);
	for i:=1 to length(s) do
	begin
		if s[i]=' ' then
		begin
			x:='';
			d:=0;
			for j:=i-1 downto 1  do
			begin
				x:=s[j]+x;
				d:=d+1;
			end;
			delete(s,1,d+1);
			if length(x)>max then
			begin
				max:=length(x);
				maxtu:=x;
			end;
		end;
	end;
	writeln(g,maxtu,' ',max);
end;
begin
	nhap;
	tim;
	close(f);
	close(g);
end.
