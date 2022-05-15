const fi='nhap3.inp';
      fo='xuat3.out';
var f,g:text;
    m,n,k:longint;
    a:array[1..1000,1..1000] of longint;
procedure nhap;
var i,j:longint;
begin
    assign(f,fi);reset(f); readln(f,m,n,k);
    assign(g,fo);rewrite(g);
    for i:=1 to m do
    for j:=1 to n do
    read(f,a[i,j]); 
end;
procedure caua;
var i,s,j:longint;
begin
    s:=0;
    for i:=1 to m do
    for j:=1 to n do
    if k mod a[i,j]=0 then s:=s+a[i,j];
    writeln(g,s);
end;
procedure caub;
var i,s,j:longint;
begin
for i:=1 to m do 
begin
    s:=0;
    for j:=1 to n do
    s:=s+a[i,j];
    writeln(g,s);
end;
end;
procedure cauc;
Var i,j,p,value,s: longint;
begin
    value:=-maxlongint;
    for i:=1 to m do
    begin
    s := 0;
    for j :=1 to n do
    s := s + a[i,j];
    if (s > value) then
    begin
      value:= S;
      p:= i;
    end;
    end;
    writeln(g,p,' ',value);
    end;
begin
    nhap;
    caua;
    caub;
    cauc;
    close(f);
    close(g);
end.

