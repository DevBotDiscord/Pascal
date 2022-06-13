const fi='bai4.inp';
      fo='bai4.out';
var f,g:text;
    s,s1:string;
    l:array[0..100,0..100] of longint;
procedure nhap;
begin
    assign(f,fi);
    reset(f);
    assign(g,fo);
    rewrite(G);
    readln(f,s);
    readln(f,s1);
end;
function max(a,b:longint):longint;
begin
    if a>b then exit(a) else exit(b);
end;
procedure kiemtra;
var i,j,max1,t,t1:longint;
begin
    max1:=-maxlongint;
    for i:=0 to length(s1) do
        l[0,i]:=0;
    for j:=0 to length(s) do
        l[j,0]:=0;
    for i:=1 to length(s) do
    for j:=1 to length(s1) do
        if s[i]=s1[j] then  l[i,j]:=l[i-1,j-1]+1 else
        l[i,j]:=0;
    for i:=1 to length(S) do
    for j:=1 to length(s1) do
        if max1<l[i,j] then begin max1:=l[i,j];  t1:=j; t:=i; end;
        writeln(g,t-max1+1,' ',t);
        writeln(g,t1-max1+1,' ',t1);
    for  i:=t1-max1+1 to t1 do
    write(g,s1[i]);
end;
begin
    nhap;
    kiemtra;
    close(F);
    close(G);
end.