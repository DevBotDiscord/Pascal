var f,g:text;
    n:longint;
    s:string;
    a:array[0..1000]of longint;
procedure nhap;
var i:longint;
begin
    assign(f,'INPUT.inp');reset(f);
    assign(g,'OUTPUT.out');rewrite(g);
    readln(f,s);
end;
function snt(a:longint):boolean;
var i:longint;
begin
    if a<2 then exit(false);
    for i:=2 to trunc(sqrt(a)) do
        if a mod i=0 then exit(false);
    exit(true);
end;
procedure tim;
var i,j,d,max,t2:longint;
    t,t1:string;
    test:boolean;
begin
    t:='';
    max:=-maxlongint;
    for i:=1 to length(s) do
        if s[i] in ['0'..'9'] then t:=t+s[i];
    for i:=1 to length(t)-1 do
        for j:=i+1 to length(t) do
        begin
            t1:=copy(t,i,j-i+1);
            val(t1,t2);
            if (snt(t2)) and (t2>max) then max:=t2;
        end;
    writeln(g,max);
end;
begin
    nhap;
    tim;
    close(f);
    close(g);
end.




