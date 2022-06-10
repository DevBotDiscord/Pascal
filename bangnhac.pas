const fi='bangnhac.inp';
		fo='bangnhac.out';
var a,b:array[1..100]of longint;
	 f,g:text;
	 n:longint;
procedure nhap;
var i:longint;
begin
	 	assign(f,fi);
	 		reset(f);
	 	assign(g,fo);
	 		rewrite(g);
	 	readln(f,n);
	 for i:=1 to n do
	  	read(f,a[i]);
end;
procedure xuli;
var i,j,c,p,tp:longint;
begin
	p:=0;
	tp:=0;
	 for i:=1 to n do
	  b[i]:=i;
	 for i:=1 to n-1 do
	  for j:=i+1 to n do
		if a[i]>a[j] then
		 begin
		  c:=a[i];
		  a[i]:=a[j];
		  a[j]:=c;
		  c:=b[j];
		  b[i]:=b[j];
		  b[j]:=c;
		 end;
	 for i:=1 to n do
	  begin
		p:=p+a[i] ;
		writeln(g,b[i],' ',p) ;
		tp:=tp+p ;
	  end;
	 write(g,tp);
end;
begin;
	nhap;
	xuli;
	close(f);
	close(g);
end.