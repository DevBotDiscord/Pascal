const fi='xaucon.inp';
      fo='xaucon.out';
Var M: array[1..100] of integer;
    i,n, dau,ldau, dai,Max: integer;
    f,g:text;
procedure nhap();
begin
    assign(f,fi);reset(f);
    assign(g,fo);rewrite(g);
    Readln(f,n);
    for i:=1 to n do
    
end;
Begin

     Write('Nhap so n: '); Readln(n);
     For i:=1 to n do
    Begin Write('[',i,']='); Readln(M[i]); End;
    {Khoi tao gia tri dau}
     i:=0;
     Max:=1;
     dau:=1;
     dai:=1;
     ldau:=1;
     While i<=n do
     Begin
     i:=i+1;
     if M[i+1]>=M[i] then dai:=dai+1 else
     if dai> Max then Begin Max:=dai; ldau:=dau; dai:=0 End
     else Begin dau:=i+1; dai:=1 End;
     End;
     Write('Xau con dai:',max,' bat dau tu: ',ldau);
     Readln
End.