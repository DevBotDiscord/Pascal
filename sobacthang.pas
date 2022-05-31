const fi='bai4.inp';
      fo='bai4.out';
Var i,n1,n2: integer;
    f,g:text;

Function kt(n:integer):Boolean;
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
    kt:=ok;
End;
procedure main;
begin 
    For i:= n1 to n2 do if kt(i) then Write(g,i:4);
end;
procedure nhap;
begin 
    assign(f,fi);reset(f);
    assign(g,fo);rewrite(g);
    while not eof(f) do 
    begin
    readln(f,n1,n2);
    main();
    end;
end;
Begin
    nhap;
    close(f);
    close(g);
End.