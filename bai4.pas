program chuongtrinh;
var s:string;
f1,f2:text;

procedure xuli;
var i,d:longint;
begin
d:=0;
For i:=1 to length(s) do
begin
if s[i]='T' then d:=d+1
else if s[i]='P' then d:=d-1;
end;
if d=1 then Write(f2,'T');
if d=2 then Write(f2,'N');
if d=3 then Write(f2,'D');
if d=4 then Write(f2,'B');
end;

BEGIN
assign(f1,'hehehehe.inp');
assign(f2,'hehehehe.out');
reset(f1);
rewrite(f2);
read(f1,s);
xuli;
close(f1);
close(f2);
END.