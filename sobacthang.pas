const fi='bai4.inp';
      fo='bai4.out';
Var i,n1,n2: integer;
    f,g:text;
procedure nhap;
begin 
    assign(f.fi);reset(f);
    assign(g,fo);rewrite(g);

Function BT(n:integer):Boolean;
Var ok: boolean;
    so:byte;
Begin
    ok:=true;
    While n>=10 do
    Begin
    so:=n mod 10;
    n:=n div 10;
    if so < (n mod 10) then ok:=ok and false;
    End;
    BT:=ok;
End;
Begin
    Write('Nhap so n1: ');Readln(n1);
    Write('Nhap so n2: ');Readln(n2);
    For i:= n1 to n2 do if BT(i) then Write(i:4);
    Readln;
End.