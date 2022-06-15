const 
	fi='bai1dt.inp';
	fo='bai1dt.out';
var i1,o1:text;
	n,k:longint;
procedure nhap;
begin
	assign(i1,fi); reset(i1);
	assign(o1,fo); rewrite(o1);
	readln(i1,n,k);
end;
procedure caua;
var d,t:longint;
begin
	d:=0;
	t:=n;
	while t<>0 do 
	begin
		t:=t div 10;
		d:=d+1;
	end;
writeln(o1,d);
end;
procedure caub;
var i,s,du,t:longint;
begin
	s:=0;
	t:=n;
	while t<>0 do 
	begin
		du:=t mod 10;
		if du mod 2=0 then s:=s+du;
		t:=t div 10 ;
	end;
	writeln(o1,s);
end;
procedure cauc;
var a:string;
begin
	str(n,a);
	writeln(o1,a[k]);
end;
begin
	nhap;
	caua;
	caub;
	cauc;
	close(i1);
	close(o1);
end.