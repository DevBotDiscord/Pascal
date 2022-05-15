uses crt;
var f,g:text;
    n:longint;
    s:string;
    a:array[0..100]of longint;
procedure nhap;
var i:longint;
begin
    assign(f,'sodondieu.inp');reset(f);
    assign(g,'sodondieu.out');rewrite(g);
    readln(f,s);
end;
function kt(i,j:longint):boolean;
var k:longint;
    ok:boolean;
begin
    ok:=false;
    for k:=i to j-2 do
        if ((s[k]<s[k+1]) and (s[k+1]>s[k+2])) or ((s[k]>s[k+1]) and (s[k+1]<s[k+2])) then ok:=true
        else
        begin
           ok:=false;
           break;
        end;
    kt:=ok;
end;
procedure tim;
var i,j,max,k,d:longint;
    maxtu:string;
begin
    d:=0;
    for i:=1 to length(s) do
        for j:=i+2 to length(s) do
            if kt(i,j) then d:=d+1;
    writeln(g,d);
end;
begin
    nhap;
    tim;
    close(f);
    close(g);
end.





