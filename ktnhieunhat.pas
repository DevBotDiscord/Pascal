const fi='ktnhiunhat.inp'
var f,g:text;
    n:longint;
    s:string;
    a:array[0..100]of int64;
    x:array[1..100]of longint;
procedure nhap;
var i:longint;
begin
    assign(f,'ktnhieunhat.inp');reset(f);
    assign(g,'ktnhieunhat.out');rewrite(g);
    readln(f,s);
end;
procedure tim;
var i,j,max,vt,d:longint;
    maxkt:char;
begin
    max:=-maxlongint;
    for i:=1 to length(s) do
    begin
        d:=0;
        for j:=1 to length(s) do
            if s[i]=s[j] then d:=d+1;
        if d>max then
        begin
            max:=d;
            vt:=i;
        end;
    end;
    writeln(g,s[vt],' ',max);
end;
begin
    nhap;
    tim;
    close(f);
    close(g);
end.


