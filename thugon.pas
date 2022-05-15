// Copyright by Nhat Quan
const
   fi = 'thugon.inp';
   fo = 'thugon.out';
var n : longint;
    f,g:text;
procedure xuli;
var s,x:string;
i:longint;
begin
   s:='';
   for i:=1 to n do 
   begin
      str(i,x);
      s:=s+x;
   end;
   while length(s) >1 do 
   begin
      for i:=1 to length(s) do 
      if i mod 2=0 then s[i]:='a';
      for i:=1 to length(s) do 
      if s[i]='a' then delete(s,i,1);
   if length(s)>1 then
   begin
      for i:=1 to length(s) do 
      if i mod 2<>0 then s[i]:='a';
      for i:=1 to length(s) do 
      if s[i]='a' then delete(s,i,1);
   end;
   end;
   writeln(g,s);
end;
procedure nhap;
begin
assign(f,fi);reset(f);
assign(g,fo);rewrite(g);
while not eof(f) do 
begin
   readln(f,n);
   xuli;
end;
end;
begin
   nhap;
   close(f);
   close(g);
end.