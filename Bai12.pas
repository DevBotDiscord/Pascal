const fi='xauuwu.inp';
      fo='xauuwu.out';
var   s:string;
     f,g:text;
procedure nhap;
begin
assign(f,fi);reset(f);
assign(g,fo);rewrite(g);
readln(f,s);
end;
procedure tim;
var i:longint;
begin
while s[i]=#32 do
delete(s,1,1);
while s[length(s)]=#32 do delete(s,length(s),1);
while pos(#32#32,s)<>0 do
delete(s,pos(#32#32,s),1);
writeln(g,s);
end;
begin
nhap;
tim;
close(f);
close(g);
end.