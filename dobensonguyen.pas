Var n,d,i,j,max:longint;
Function TICH(n:Longint):Longint;
Var tam:integer;
Begin
     if n=0 then tam:=0 else tam:=1;
     While n<> 0 do
     Begin
          Tam:=tam*(n mod 10);
          n:=n div 10;
     End;
     TICH:=Tam;
End;
Begin
     clrscr;
     Write('Nhap n:');Readln(n);
     Max:=0;
     For i:=1 to n do
     Begin
     d:=0;
     j:=i;
     gotoxy(1,2);
     Write('Dang duyet den so: ',i);
     While j>9 do
     Begin
          d:=d+1;
          j:=TICH(j);
     End;
     if d>=Max then
     Begin
          max:=d;
          gotoxy(1,3);
          Writeln('So co do ben lon nhat dang la ',i,' do ben la:',d);
     End;
     End;
     Gotoxy(1,4);
     Writeln('Da duyet xong');
     Readln
End.