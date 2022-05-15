uses crt;
var f,g:text;
    k:longint;
    s:string;
    a,c:array[0..100000]of int64;
    b:array[1..100000]of string;
procedure nhap;
var i:longint;
begin
    assign(f,'sntghep.inp');reset(f);
    assign(g,'sntghep.out');rewrite(g);
    readln(f,k);
end;
function snt(n:longint):boolean;
var i:longint;
begin
    if n<2 then exit(false);
    for i:=2 to trunc(sqrt(n)) do
        if n mod i=0 then exit(false);
    exit(true);
end;
procedure tim;
var i,j,max,d,d1,d2,t:longint;
    t1,t2:string;
begin
    d:=0;
    d1:=0;
    d2:=0;
    for i:=1 to 1000000 do
        if snt(i) then
        begin
            d:=d+1;
            a[d]:=i;
        end;
    for i:=1 to d-1 do
    begin
        str(a[i],t1);
        str(a[i+1],t2);
        d1:=d1+1;
        b[d1]:='';
        b[d1]:=t1+t2;
    end;
    for i:=1 to d1 do
    begin
        val(b[i],t);
        if snt(t) then
        begin
            d2:=d2+1;
            c[d2]:=t;
        end;
    end;
    writeln(g,c[k]);
end;
begin
    nhap;
    tim;
    close(f);
    close(g);
end.





