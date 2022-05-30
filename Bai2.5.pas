const fi='bai2.inp';
      fo='bai2.out';
var t,v:longint; s:string;
    f,g:text;
procedure nhap;
begin
    assign(f,fi);reset(f);
    assign(g,fo);rewrite(g);
    readln(f,s);
end;
procedure ktnguoc;
var i:longint;
begin
    t:=0;
    v:=0;
    i:=length(s);
    while i>0 do
    begin
        case s[i] of
            '(':dec(t);
            ')':inc(t);
            '[':dec(v);
            ']':inc(v);
    end;
    if t<0 then
    begin
        insert(')',s,i);
        t:=0;
    end;
    if v<0 then
    begin
        insert(']',s,i);
        v:=0;
    end;
    dec(i);
    end;
procedure ktxuoi;
var i:longint
begin
t:=0;
v:=0;
i:=1;
while i<=length(s) do
begin
    case s[i] of
        '(':inc(t);
        ')':dec(t);
        '[':inc(v);
        ']':dec(v);
    end;
    if t<0 then
    begin
        insert('(',s,i);
        inc(i);
        t:=0;
    end;
    if v<0 then
    begin
        insert('[',s,i);
        inc(i);
        v:=0;
        end;
    inc(i);
    end;
    if (t>0) or (v>0) then ktnguoc;
    write(g,s);
end;
begin
nhap;
ktxuoi;
close(f);
close(G);
end.