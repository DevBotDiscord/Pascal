uses crt;
var f,g:text;
    n:longint;
    s:string;
    a:array[0..100]of longint;
procedure nhap;
var i:longint;
begin
    assign(f,'xoakttrung.inp');reset(f);
    assign(g,'xoakttrung.out');rewrite(g);
    readln(f,s);
end;
procedure tim;
var i,j,max,k,d:longint;
    maxtu:string;
begin
    k:=0;
    d:=0;
    while k<length(s) do
    begin
        if s[k]=s[k+1] then delete(s,k,1)
        else k:=k+1;
    end;
    writeln(g,s);
end;
begin
    nhap;
    tim;
    close(f);
    close(g);
end.




