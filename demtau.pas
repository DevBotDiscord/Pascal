const fi='demtau.inp';
      fo='demtau.out';
var f,g:text;
    a:array[1..1000,1..1000] of char;
    s:string;
    n,m:longint;
procedure nhap;
var j:longint;
begin
    m := 0 ;
    fillchar(a,sizeof(a),'0');
    assign(f,fi); reset(f);
    assign(g,fo); rewrite(g);
    while not eof(f) do
    begin
       readln(f,s);
       inc(m);
       for j:=1 to length(s) do
        a[m,j]:=s[j];
    end;
    n:=length(s);
end;
procedure xuli ;
var i,j,dem:longint;
begin
    dem:=0;
    for i := 1 to m + 1 do
    for j := 1 to n + 1 do
        if (a[i,j] = 'x') and (a[i+1,j] = '0') and (a[i,j+1] = '0') then inc(dem);
    write(g,dem);
end;
begin
    nhap;
    xuli;
    close(f);
    close(g);
end.