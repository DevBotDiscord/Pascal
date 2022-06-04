const fi='bai2.inp';
	  fo='bai2.out';
var f,g:text;
	n:longint;
procedure nhap;
begin 
	assign(f,fi); reset(f);
	assign(g,fo); rewrite(g);
	readln(f,n);
end;
procedure xuli;
var l,i,a,t:longint;
begin 
for l:=1 to n div 2 do 
	if ((2*n-l*(l+1)) mod (2*(l+1)) =0) and (2*n-l*(l+1)>0) then
	begin 
	t:=l;
	a:=(2*n-l*(l+1)) div (2*(l+1));
	end;
for i:=a to a+t do
write(g,i,' ');
writeln(g); 
end;
begin 
	nhap;
	xuli;
	close(f);
	close(g);
end.