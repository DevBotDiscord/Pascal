uses crt;
var
	kq,st:string;
	vt,i,d:byte;
	a:array[1..100] of string;
begin 
	clrscr;
	i:=1;
	st:='Hom nay la ng bun nhat doi toi';
	st:=st+' ';
	while length(st)<>0 do 
	begin 
		vt:=pos(' ',st);
		kq:=copy(st,1,vt-1);
		delete(st,1,vt);
		a[i]:=kq;
		inc(d);
		inc(i);
	end;
	for i:=1 to d do 
	writeln(a[i]);
	writeln(kq);
	readln;
end.