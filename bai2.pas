const fi='bai2,inp';
	  fo='bai2.out';
var f,g:text;
    n,d:longint;
    a:array[0..1000]of longint;
    s:array[1..1000]of char;
procedure nhap;
var i:longint;
begin
    assign(f,fi);reset(f);
    assign(g,fo);rewrite(g);
    readln(f,n,d);
    for i:=1 to n do
        readln(f,s[i],a[i]);
end;
procedure tim;
var i,j,t:longint;
    test:boolean;
begin
    t:=0;
    for i:=1 to n do
        t:=t+a[i];
    writeln(g,d*t);
end;
begin
    nhap;
    tim;
    close(f);
    close(g);
end.