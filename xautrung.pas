const fi='xautrung.inp';
      fo='xautrung.out';
var s:string;
    f,g:text;

procedure nhap;
begin
assign(f,fi);reset(f);
assign(g,fo);rewrite(g);
readln(f,s);
end;

procedure tim;
var i,d,j:longint;  t:char;
begin
d:=0;
for i:=1 to length(s)-1 do
for j:=i+1 to length(s) do
if s[i]>s[j] then
begin
t:=s[i];
s[i]:=s[j];
s[j]:=t;
end;
for i:=1 to length(s) do
if s[i]=s[i+1] then inc(d);
write(g,d);
end;
begin
nhap;
tim;
close(f);
close(g);
end.