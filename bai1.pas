const fi='bai1.inp';
	  fo='bai1.out';
var f,g:text;
    n:longint;
    a,b,c:array[0..1000]of longint;
procedure nhap;
var i:longint;
begin
    assign(f,fi);reset(f);
    assign(g,fo);rewrite(g);
    readln(f,n);
    for i:=1 to n do
        read(f,a[i]);
    readln(f);
    for i:=1 to n do
        read(f,b[i]);
end;
procedure tim;
var i,j,d,t:longint;
    test:boolean;
begin
    d:=0;
    for i:=1 to n do
        c[i]:=a[i];
    for i:=1 to n do
        c[i+n]:=b[i];
    for i:=1 to n*2-1 do
        for j:=i+1 to n*2 do
            if c[i]>c[j] then
            begin
                t:=c[i];
                c[i]:=c[j];
                c[j]:=t;
            end;
    for i:=1 to n*2 do
        write(g,c[i],' ');
end;
begin
    nhap;
    tim;
    close(f);
    close(g);
end.