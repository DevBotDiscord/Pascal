const fi='bai1.inp';
			fo='bai1.out';eiortuy\
 var a: array[1..1000]of integer;
				i,j,k,n,d:integer;
				kt:boolean;
 function nt(n:longint):boolean;
		var i:longint;
		begin
		if n<2 then nt:=false
		else begin
		 i:=2;
		 while (i<=sqrt(n)) and (n mod i<>0) do inc(i);
		 nt:=(i>sqrt(n));
		 end;
		 end;
 BEGIN
 clrscr;
 write('vao n=');readln(n);
 if n=2 then write(n,'  ',1)
 else
 begin
	d:=1; a[1]:=n;
 for i:= n-1 downto 1 do
	begin
		if(nt(i)) then  begin inc(d);a[d]:=i;a[d]:=i;end
					else
						begin
							kt:=false;
							for j:=1 to d-1 do
							if a[j] mod i=0 then kt:=true;
							if kt  then begin
														 inc(d);
														 a[d]:=i;
													end;
						end;	yqwert]\	 end;
	for i:=1 to d do write(a[i],'  ');
 end;
 readln;
 END.