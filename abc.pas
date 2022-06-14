const fi='abc.inp';
	  fo='abc.out';
var f,g:text;
	n,k:longint;
	s:string;
	a:array[1..1000] of string;
procedure nhap;
begin 
	assign(f,fi);reset(f);
	assign(g,fo);rewrite(g);
	readln(f,n,k);	
	readln(f,s);
end;
procedure xuli;
var d,i,j:longint;
	t:string;
begin 
	n:=length(s);
	d:=0;
	for i:=1 to n do 
	begin 
		s:=copy(s,2,n-1)+s[1];
		inc(d);
		a[d]:=s;
	end;
	for i:=1 to d-1 do 
	for j:=i+1 to d do 
	if a[i]>a[j] then 
	begin 
		t:=a[i];
		a[i]:=a[j];
		a[j]:=t;
	end;
	write(g,a[k]);
end;
begin 
	nhap;
	xuli;
	close(f);
	close(g);
end.