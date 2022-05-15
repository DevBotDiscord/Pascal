uses crt;
var f,g:text;
    n,k:longint;
    s:string;
    a:array[0..100]of longint;
procedure nhap;
var i:longint;
begin
    assign(f,'dayconnhieunhat.inp');reset(f);
    assign(g,'dayconnhieunhat.out');rewrite(g);
    readln(f,n);
    for i:=1 to n do
        read(f,a[i]);
    readln(f,k);
end;
procedure tim;
var i,j,max,t,l:longint;
    maxkt:char;
begin
    max:=-maxlongint;
    for i:=1 to n do
        for j:=i to i+k-1 do
        begin
            t:=0;
            for l:=i to j do
                t:=t+a[l];
            if t>max then max:=t;
        end;
    for i:=1 to n do
        for j:=i to i+k-1 do
        begin
            t:=0;
            for l:=i to j do
                t:=t+a[l];
            if t=max then
                for l:=i to j do
                    write(g,a[l],' ');
        end;
end;
begin
    nhap;
    tim;
    close(f);
    close(g);
end.



