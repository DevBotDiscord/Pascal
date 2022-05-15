const   fi='nenxau.inp';
        fo='nenxau.out';
var s1,kq1:string;
	f,g:text;
procedure nhap;
begin
        assign(f,fi);reset(f);
		assign(g,fo);rewrite(g);
        readln(f,s1);
end;
procedure nen(s:string);
var  so:string;
     i,j,n:integer;
begin
        i:=1;
        kq2:='';
        repeat
               so:='0';
               while s2[i] in ['1'..'9'] do
                   begin
                        so:=so+s2[i];
                        inc(i);
                   end;
               val(so,n);
               if n>1 then
                   for j:=1 to n do kq2:=kq2+s2[i]
               else kq2:=kq2+s2[i];
               inc(i);
        until i>length(s2);
end;
begin
        nhap;
        nen(s1);
        writeln(g,kq1);
        close(f);
		close(g);
end.
