const fi='fibo.inp';
		fo='fibo.out';
Var f,g: text;
	n: integer;
procedure nhap;
Begin
	assign(f,fi); reset(f);
	assign(g,fo);rewrite(g);
	readln(f,n);
end;
procedure xuli;
Var fibo,vt: array[1..100] of integer;
	t,i,d,j: integer;
	ok:boolean;
Begin
	fibo[1]:= 1;
	fibo[2]:= 1;
	t:= 1;
	d:= 2;
	ok:= true;
	While t < n do
		begin
			inc(d);
			fibo[d]:= fibo[d-1]+fibo[d-2];
			t:= fibo[d];
		end;
	t:= n;
	j:= 0;
	For i:= d downto 1 do
		begin
			If fibo[i] <= t then
				begin
					inc(j);
					vt[j]:= i;
					t:= t - fibo[i];
				end;
		end;
		If t <> 0 then ok:= false;
		If Ok = true then
		begin 
		write(g,n,'=');
				for i:= 1 to j do
					  begin
					  If i <> j then
					  write(g, fibo[vt[i]], '+') else
					  write(g, fibo[vt[i]])
					  end
		end
					  else write(g, 'Khong the bieu dien ');
end;
Begin
	nhap;
	xuli;
	close(f);
	close(g);   
end.