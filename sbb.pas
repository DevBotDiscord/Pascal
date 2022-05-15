program Sobanbe;
uses crt;
var m,n,i,a,b:longint;
function Suoc(x:longint):longint;
 var j,s:longint;
 begin
 s:=0;
  for j:=1 to x-1 do
   if (x mod j) = 0 then s:=s+j;
  Suoc:=s;
 end;
begin

for m:=1 to 70000-1 do
 if (Suoc(Suoc(m))=m) and (Suoc(m)>=m) and (m<70000) and (Suoc(m)<70000) then writeln(m,#32,Suoc(m));
readln;
end.    