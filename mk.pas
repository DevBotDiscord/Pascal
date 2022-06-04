const fi='bai1.inp';
	  fo='bai1.out';
var n,k:longint;
	f,g:text;
procedure nhap;
	begin
		assign(f,fi);reset(f);
		assign(g,fo);rewrite(g);
		readln(f,n,k);		
	end;
procedure tim;
	var s,i,d:longint;
begin
	s:=0;
	d:=0;
	for i:=n downto 1 do 
		begin
			s:=s+i;
			
			if d = k then begin
				inc(d);
			  break;
			  end;
		end;
		write(g,s);
end;
begin
	nhap;
	tim;
	close(f);
	close(g);end.