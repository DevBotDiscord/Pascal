uses crt;
var f,g:text;
    n:longint;
    test:boolean;
    a:array[0..100]of longint;
procedure nhap;
var i,t:longint;
begin
    assign(f,'xepgach.inp');reset(f);
    assign(g,'xepgach.out');rewrite(g);
    readln(f,n);
    test:=true;
    t:=0;
    for i:=1 to n do
        read(f,a[i]);
    for i:=1 to n do
        t:=t+a[i];
    if t mod n<>0 then test:=false;
end;
procedure tim;
var i,j,min,d:longint;
begin
    min:=maxlongint;
    d:=0;
    for i:=1 to n do
        if a[i]<min then min:=a[i];
    for i:=1 to n do
        if a[i]>min then d:=d+1;
    if d>0 then writeln(g,d)
    else writeln(g,'KO CAN DI CHUYEN');
end;
begin
    nhap;
    if test=false then writeln(g,'KO HOP LE')
    else
    tim;
    close(f);
    close(g);
end.


