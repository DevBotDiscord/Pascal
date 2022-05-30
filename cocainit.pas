Uses crt;
Var max,i,n,ln:longint;
Function demuoc(b:longint):longint;
Var dem,i:longint;
Begin
        dem:=0;
        For i:=1 to b do
        If b mod i=0 then dem:=dem+1;
        demuoc:=dem;
End;

Begin
        Clrscr;
        Write('Nhap n: '); readln(n);
        max:=0;
        For i:=1 to n do
        If demuoc(i)>max then
        Begin
                max:=demuoc(i);
                ln:=i;
        End;
        Write('So phan nguyen to: ',ln);
        Readln
End.