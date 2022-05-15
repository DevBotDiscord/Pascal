// Copyright by Nhat Quan
const
   fi = 'xeda.inp';
   fo = 'xeda.out';
var s : string;
    k : longint;
    f,g:text;
procedure mahoa;
var i,t:longint;
begin
assign(f,fi);reset(f);
assign(g,fo);rewrite(g);
read(f,s,k);
   for i:=1 to length(s)do
   begin
      if s[i] in['a'..'z'] then 
      begin
         t:= ord(s[i])+ k;
         if t>122 then t:=t-26;
         s[i]:=chr(t);
      end; 
      if s[i] in ['A'..'Z'] then 
      begin
         t:= ord(s[i])+ k;
         if t>90 then t:=t-26;
         s[i]:=chr(t);
      end;
   end;
write(g,s);
end;

Begin
mahoa;
close(f);
close(g);
End.