const fi='bai4.inp';
      fo='bai4.out';
Var i,n,n1,n2:longint;
    f,g:text;

function kt(n:integer):Boolean;
Var so:byte;
Begin
    While n>=10 do
    Begin
    so:=n mod 10;
    n:=n div 10;
    if so < (n mod 10) then exit(false);
    End;
    exit(true);
End;
procedure main;
begin 
    For i:= n1 to n2 do if kt(i) then Write(g,i:4);
end;
procedure nhap;
var j:longint;
begin 
    assign(f,fi);reset(f);
    assign(g,fo);rewrite(g);
    readln(f,n);
    for j:=1 to n do 
    begin 
    read(f,n1,n2);
    main();
    writeln(g);
    end;
end;
Begin
    nhap;
    close(f);
    close(g);
End.