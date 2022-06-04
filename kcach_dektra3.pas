const fi='kcach.inp';
      fo='kcach.out';
var f,g:text;
    n,m:string;
    a:array[0..1000]of longint;
procedure nhap;
var i:longint;
begin
    assign(f,fi);reset(f);
    assign(g,fo);rewrite(g);
    readln(f,n);
    readln(f,m);
end;
procedure tim;
var i,j,d,tm,tn:longint;
    test:boolean;
begin
    d:=0;
    for i:=1 to length(n) do
    begin
        val(n[i],tn);
        val(m[i],tm);
        if tm>tn then
        begin
            if tm-tn<=5 then d:=d+tm-tn
            else d:=d+(10+tn)-tm;
        end
        else if tm<tn then
        begin
            if tn-tm<=5 then d:=d+tn-tm
            else d:=d+(10+tm)-tn;
        end;
    end;
    writeln(g,d);
end;
begin
    nhap;
    tim;
    close(f);
    close(g);
end.




