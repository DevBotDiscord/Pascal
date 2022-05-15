const fi='bai2,5.inp';
	  fo='bai2,5.out';
var SoInp:array[1..1000] of string ;
	f,g:text;
procedure nhap;
var i:byte;
	s:string;
	b:boolean;
begin
	assign(f,fi);reset(f);
	assign(g,fo);rewrite(g);
	readln(f,SoInp);
end;
procedure doc;
var i,j:byte;
	s1,s2,ss:string;
begin
	ss := '';
	j  := 0;
	for i:=length(SoInp) downto 1 do
	begin
		inc(j);
		j := j mod 12;
		case (SoInp[i]) of '0':
		begin
			if not (j in [1,4,7,10]) then
			s1:=' khong'
			else s1 := '';
			if (j in [2,5,8,11]) then s1:='';
		end;
		'1':
		begin
			if j in [2,5,8,11] then s1 := ' muoi'
			else s1 := ' mot';
		end;
		'2': s1:=' hai';
		'3': s1:=' ba';
		'4': s1:=' bon';
		'5':
		begin
			if ((j in [1,4,7,10])and(SoInp[i-1]<>'0')) then
			s1 := ' lam'
			else s1 := ' nam';
		end;
		'6': s1:=' sau';
		'7': s1:=' bay';
		'8': s1:=' tam';
		'9': s1 := ' chin';
		end;
		case j of
		1:s2:='';
		2,5,8,11:
		begin
			if SoInp[i]<>'0' then
			begin
				if SoInp[i]<>'1' then s2 := ' muoi'
				else s2 := '';
			end
			else if SoInp[i+1]<>'0' then
			s2:=' le'
			else s2 := '';
		end;
		3,6,9,0:s2 := ' tram';
		4:s2 := ' ngan';
		7:s2 := ' trieu';
		10:s2 := ' ty';
		end;
	ss := s1+s2+ss;
	end;
	write(g,ss);
end;
begin
	nhap;
	doc;
	close(f);
	close(g);
end.