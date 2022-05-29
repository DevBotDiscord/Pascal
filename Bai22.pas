program sap_xep_so_trong_xau;
uses crt;
var s,tg: string;
    a: array[1..100] of string;
    b: array[1..100] of integer;
    so, kt, i, j, n, so1:integer;
begin
     clrscr;
     write('Nhap xau: '); readln(s);
     i:=1;
     j:=1;
     while i<=length(s) do
     begin
          val(s[i], so, kt);
          if kt = 0 then
          begin
               b[j]:=i;
               while (kt=0) and (i<=length(s)) do
               begin
                    a[j]:=a[j]+s[i];
                    delete(s,i,1);
                    val(s[i],so, kt);
               end;
               j:=j+1;
          end;
          i:=i+1;
     end;
     n:=j-1;
     {sap xep mang xau-so}
     for i:=1 to n-1 do
     for j:=i+1 to n do
     begin
          val(a[i],so,kt);
          val(a[j],so1,kt);
          if so > so1 then
          begin
               tg:=a[i];
               a[i]:=a[j];
               a[j]:=tg;
          end;
     end;    for i:=n downto 1 do insert(a[i],s,b[i]);
    writeln;
    write('xau da sx: ',s);
readln;
end