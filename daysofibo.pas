const fi='bai1.inp';
      fo='bai1.out';
var n:longint;
    f,g:text;
procedure nhap;
begin
    assign(f,fi);reset(f);
    assign(g,fo);rewrite(g);
    readln(f,n);
end;
procedure tim;
var f1,f2,i:longint;
begin
    f1:=1;
    f2:=1;
    for i:=1 to n do
    begin
        write(g,f1,' ');
        inc(f2,f1);
        f1:=f2-f1;
    end;
end;
begin
    nhap;
    tim;
    close(f);
    close(g);
end.