uses crt;
var f,g:text;
    n:longint;
    s:string;
    a,vt:array[0..100]of longint;
procedure nhap;
var i:longint;
begin
    assign(f,'sapso.inp');reset(f);
    assign(g,'sapso.out');rewrite(g);
    readln(f,s);
end;
procedure tim;
var i,j,k:longint;
    t:char;
begin
    k:=0;
    for i:=1 to length(s) do
        if s[i] in ['0'..'9'] then
        begin
            inc(k);
            vt[k]:=i;
        end;
    for i:=1 to k-1 do
        for j:=i+1 to k do
            if s[vt[i]]>s[vt[j]] then
            begin
                t:=s[vt[i]];
                s[vt[i]]:=s[vt[j]];
                s[vt[j]]:=t;
            end;
    writeln(g,s);
end;
begin
    nhap;
    tim;
    close(f);
    close(g);
end.


