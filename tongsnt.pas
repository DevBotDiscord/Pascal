uses crt;
var f,g:text;
    n:longint;
    s:string;
    a,c:array[0..100000]of int64;
    b:array[1..100000]of string;
procedure nhap;
var i:longint;
begin
    assign(f,'tongsnt.inp');reset(f);
    assign(g,'tongsnt.out');rewrite(g);
    readln(f,n);
    for i:=1 to n do
        readln(f,a[i]);
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
var i,j,k,l,t1,t2:longint;
begin
    for i:=1 to n do
    begin
        for k:=1 to a[i] do
            for l:=k+1 to a[i] do
                if (k+l=a[i]) and (snt(k)) and (snt(l)) then
                begin
                    t1:=k;
                    t2:=l;
                end;
        writeln(g,t1,' ',t2);
    end;
end;
begin
    nhap;
    tim;
    close(f);
    close(g);
end.






