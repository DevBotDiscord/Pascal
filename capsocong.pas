const
      fo='capso+.out';
var a,b,c:longint; g:text;
procedure tim;
var i:longint;
begin
      assign(g,fo);rewrite(g);
      for a:=1 to 9 do
      for b:=0 to 9 do
      for c:=0 to 9 do
      if (2*b=a+c) and  (c mod 2 <>0)   then write(g,a,b,c,' ');
      writeln(g);
end;
begin
tim;
close(g);
end.