const fi='xauconchung.inp';
      fo='xauconchung.out';
var f,g:text;
    x,y:string;
    l:array[0..100,0..100]of longint;
procedure nhap;
begin
    assign(f,fi);reset(f);
    assign(g,fo);rewrite(g);
    readln(f,x);
    readln(f,y);
end;
function max(a,b:longint):longint;
begin
    if a>b then max:=a
    else max:=b;
end;
procedure tim;
var i,j,t,dx,dy:longint;
begin
    fillchar(l,sizeof(l),0);
    dx:=length(x);
    dy:=length(y);
    for i:=1 to length(x) do
        for j:=1 to length(y) do
            if x[i]=y[j] then l[i,j]:=l[i-1,j-1]+1
            else l[i,j]:=max(l[i-1,j],l[i,j-1]);
    t:=dx-l[dx,dy]+dy-l[dx,dy];
    writeln(g,t);
end;
begin
    nhap;
    tim;
    close(f);
    close(g);
end