var f,g:text;
    n:longint;
    a:array[0..1000,0..1000]of longint;
procedure nhap;
var i,j:longint;
begin
    assign(f,'INPUT.inp');reset(f);
    assign(g,'OUTPUT.out');rewrite(g);
    readln(f,n);
    for i:=1 to n do
    begin
        for j:=1 to n do
            read(f,a[i,j]);
        readln(f);
    end;
end;
procedure tim;
var i,j,d,max,i1,j1:longint;
    test:boolean;
begin
    max:=-maxlongint;
    for i:=1 to n do
    begin
        d:=0;
        i1:=1;
        j1:=i;
        repeat
            d:=d+a[i1,j1];
            inc(i1);
            inc(j1);
        until (j1>n) or (i1>n);
        if d>max then max:=d;
    end;
    for i:=1 to n do
    begin
        d:=0;
        i1:=i;
        j1:=1;
        repeat
            d:=d+a[i1,j1];
            inc(i1);
            inc(j1);
        until (j1>n) or (i1>n);
        if d>max then max:=d;
    end;
    writeln(g,max);
end;
begin
    nhap;
    tim;
    close(f);
    close(g);
end.





