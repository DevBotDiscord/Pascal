const fi='addsub.inp';
      fo='addsub.out';
var A:array[1..100] of string;
    n:longint;
    f1,f2:text;
procedure xuly;
var i:longint;
begin
	i:=0;
	while not eof(f1) do
	begin
		i:=i+1;
		readln(f1,A[i]);
	end;
	n:=i;
end;
procedure kt;
var i,j,d,c:longint;
    s1,s2,s:string;
    t:array[1..100] of longint;
begin
	for i:=1 to n do
	begin
		s1:='';
		s2:='';
		s:=A[i];
		for j:=1 to length(s) do
			if (s[j]='+') or (s[j]='-') then
			begin
				for d:=1 to j-1 do
					s1:=s1+s[d];
				for c:=j+1 to length(s) do
					s2:=s2+s[c];
			end;
		val(s1,t[1]);
		val(s2,t[2]);
		for j:=1 to length(s) do
		begin
			if (s[j]='+') then writeln(f2,t[1],'+',t[2],'=',t[1]+t[2]);
			if (s[j]='-') then writeln(f2,t[1],'-',t[2],'=',t[1]-t[2]);
		end;
	end;
end;
BEGIN
	assign(f1,'ADDSUB.INP');
	assign(f2,'ADDSUB.OUT');
	reset(f1);
	rewrite(f2);
	xuly;
	kt;
	close(f1);
	close(f2);
END.