const fi='nghiem.inp';
      fo='nghiem.out';
var f,g:text;
    n:longint;
    a,b:array[0..1000]of longint;
procedure nhap;
var i:longint;
begin
    assign(f,fi);reset(f);
    assign(g,fo);rewrite(g);
    readln(f,n);
end;
function snt(a:longint):boolean;
var i:longint;
begin
    if a<2 then exit(false);
    for i:=2 to trunc(sqrt(a)) do
        if a mod i=0 then exit(false);
    exit(true);
end;
procedure tim;
var i,j,d,k:longint;
    test:boolean;
begin
    d:=0;
    for i:=1 to n do
        if snt(i) then
        begin
            inc(d);
            b[d]:=i;
        end;
    for i:=1 to d do
        for j:=1 to d do
            for k:=1 to d do
                if (b[i]+b[j]+b[k]=n) and (b[i]<=b[j]) and (b[j]<=b[k]) then writeln(g,b[i],' ',b[j],' ',b[k]);
    writeln(g,'0 0 0');
end;
begin
    nhap;
    tim;
    close(f);
    close(g);
end.




