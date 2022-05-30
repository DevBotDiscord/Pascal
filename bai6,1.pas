uses crt;
type mang=array[1..10000]of longint;
var fi,fo:text;
    m:integer;
    a:mang;
procedure docdulieu;
var i:integer;
begin
    assign(fi,'d:\phannt.inp');
    reset(fi);
    readln(fi,m);
    for i:=1 to m do readln(fi,a[i]);
    close(fi);
end;
function demuoc(var n:longint):longint;
var i:longint;
    dem:integer;
begin
    dem:=0;
    for i:=2 to n-1 do
        if n mod i = 0 then dem:=dem+1;
    demuoc:=dem;
end;
function sophanntmax(var n:longint):longint;
var max,so,i,j:longint;
    b:array[1..1000]of word;
begin
    i:=1;
    j:=0;
    max:=demuoc(i);
    so:=i;
    for i:=2 to n do
        if demuoc(i)>max then
            begin
                max:=demuoc(i);
                so:=i;
            end;
    for i:=so+1 to n do
        if demuoc(i)=max then
            begin
                max:=max;
                inc(j);
                b[j]:=i;
            end;
    write(fo,so,' ');
    if j>0 then
        for i:=1 to j do write(fo,b[i],' ');
    writeln(fo);
end;
procedure xuli;
var i:integer;
begin
    clrscr;
    docdulieu;
    assign(fo,'d:\phannt.out');
    rewrite(fo);
    for i:=1 to m do sophanntmax(a[i]);
    close(fo);
end;
begin
    xuli;
end.