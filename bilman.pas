const fi='bitman.inp';
      fo='bitman.out';
var f,g:text;  
    n,t:longint;
    a:array[1..100,1..100]of longint;
procedure nhap;
var i,j:longint;
begin
    assign(f,fi);reset(f);
    assign(g,fo);rewrite(g);
    readln(f,n);
    for i:=1 to n do 
    begin
        for j:=1 to n do read(f,a[i,j]);
        readln(f);
    end;
end;

procedure xuli;
var i,j,x,y,dem:longint;
    tm:longint;
begin
    t:=0;
    x:=1;
    while x<n-2 do 
    begin
        y:=1;
        while y<=n-2 do 
        begin
            tm:=0;
            dem:=0;
            for i:=x to x+2 do 
                for j:=y to y+2 do 
                begin
                    if a[i,j]<0 then break;
                    tm:=tm+a[i,j];
                    inc(dem);
                end;
        if (dem=9) and (t<tm) then t:=tm;
        inc(y);
        end;
    inc(x);
    end;
    if t>0 then writeln(g,t)
    else writeln(g,-1);
end;
begin
    nhap;
    xuli;
    close(f);
    close(g);
end.