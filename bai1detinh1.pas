const fi='bai1.inp';
	fo='bai1.out';
var f,g:text;
    a:array['0'..'9']of longint;
    b:array['A'..'Z']of longint;
    s:string;
procedure nhap;
begin
    assign(f,fi);reset(f);
    assign(g,fo);rewrite(g);
    readln(f,s);
end;
procedure tim;
var i:longint;
    k:char;
begin
    fillchar(a,sizeof(a),0);
    fillchar(b,sizeof(b),0);
    for i:=1 to length(s) do
        if s[i] in ['0'..'9'] then a[s[i]]:=a[s[i]]+1
        else if s[i] in ['A'..'Z'] then b[s[i]]:=b[s[i]]+1;
    for k:='0' to '9' do
        if a[k]>0 then writeln(g,k,' ',a[k]);
    for k:='A' to 'Z' do
        if b[k]>0 then writeln(g,k,' ',b[k]);
end;
begin
    nhap;
    tim;
    close(f);
    close(g);
end.