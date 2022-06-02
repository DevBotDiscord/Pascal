program sophannguyento ;
const fi='bai4.inp';
      fo='bai4.out';
var k:longint;
    f,g:text;
procedure input ;
begin
 assign(f,fi);
 reset(f);
 assign(g,fo);
 rewrite(g);
 readln(f,k);
end;
function ktuoc(n:longint):longint;
var d,i:longint;
begin
d:=0;
 for i:=1 to n do
  if n mod i = 0 then inc(d);
 exit(d) ;
end;
function kt(n : longint) : boolean ;
var i : longint ;
begin
 for i := 1 to n do
  if ktuoc(n) < ktuoc(i) then
   exit(false) ;
  exit(true);
end ;
procedure output;
var max,i,t:longint;
begin
max:=-maxlongint;
 for i:= k downto 1 do
  if kt(i) = true then
   begin
    writeln(g,i);
    break ;
   end ;
end;
begin
 input;
 output;
close(f);
close(g);
end.