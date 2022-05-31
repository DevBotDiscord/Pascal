const fi='bai1.inp';
      fo='bai1.out';
var f,g:text;
    s:string;
procedure nhap;
begin
assign(f,fi); reset(f);
assign(g,fo); rewrite(g);
readln(f,s);
end;

function kt(s:string):boolean;
var i:longint;
    s1:string;
begin
s1:='';
for i:=length(s) downto 1 do
s1:=s1+s[i];
if s1=s then exit(true);
exit(false);
end;

procedure tim;
var i,d,n:longint;
    s1:string;
begin
n:=length(s);
s:=s+s;
d:=0;
for i:=1 to n do
        begin
        s1:=copy(s,i,n);
        if kt(s1) then
        begin 
        writeln(g,i);
        inc(d);
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