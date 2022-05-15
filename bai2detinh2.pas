const fi='bai2.inp';
      fo='bai2.out';
var f,g:text;
    n,l,k:longint;
    a,b:array[1..100]of longint;
procedure nhap;
begin
    assign(f,fi);reset(f);
    assign(g,fo);rewrite(g);
    readln(f,n);
    k:=0;
    while not eof(f) do 
    begin
        inc(k);
        readln(f,a[k]);
    end;
    l:=0;
    while not eof(f) do
    begin
        inc(l);
        readln(f,b[l]);
    end;
end;
procedure tim;
var i,j,d:longint;
begin
    d:=0;
    for i:=1 to k do
        for j:=1 to l do 
            if a[i]=b[j] then 
            begin
                inc(d);
                c[d]:=a[i];
            end;
    for i:=1 to d write(g,c[i],' ');
end;