var f,g:text;
    n:longint;
    a:array[0..1000,0..1000]of longint;
procedure nhap;
var i,j:longint;
begin
    assign(f,'INPUT.inp');reset(f);
    assign(g,'OUTPUT.out');rewrite(g);
    readln(f,n);
    for i:=1 to n do
    begin
        for j:=1 to n do
            read(f,a[i,j]);
        readln(f);
    end;
end;
procedure tim;
var i,j,d,max,k,l:longint;
    test,test1:boolean;
begin
    max:=-maxlongint;
    test1:=false;
    for i:=1 to n-2 do
        for j:=1 to n-2 do
        begin
            d:=0;
            for k:=i to i+2 do
            begin
                test:=true;
                for l:=j to j+2 do
                    if a[k,l]>0 then d:=d+a[k,l]
                    else
                    begin
                        test:=false;
                        break;
                    end;
                if test=false then break;
            end;
            if (d>max) and (test=true) then
            begin
                max:=d;
                test1:=true;
            end;
        end;
    if test1=true then writeln(g,max)
    else writeln(g,'-1');
end;
begin
    nhap;
    tim;
    close(f);
    close(g);
end.





