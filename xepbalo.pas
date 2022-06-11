const fi='balo.inp';
      fo='balo.out';
var f,g:text;
    d,v,e:array [1..100] of longint;
    n,m:longint;
procedure input;
var i:longint;
begin
 assign(f,fi);
 reset(f);
 assign(g,fo);
 rewrite(g);
 readln(f,n,m);
 for i:=1 to n do
   readln(f,d[i],v[i]);
end;
procedure output ;
var b:array [1..100] of longint;
    i , j ,c , tong ,dem :longint;
begin
 for i:=1 to n do
  b[i]:=i;
 for i:=1 to n-1 do
  for j:=i+1 to n do
   if v[i]<v[j] then
    begin
     c := v[i];
     v[i] := v[j];
     v[j] := c;
     c := d[i];
     d[i] := d[j];
     d[j] := c;
     c := b[i];
     b[i] := b[j];
     b[j] := c;
    end;
tong := 0;
dem := 0;
 for i:=1 to n do
  begin
   if d[i]<=m then
    begin
     tong := tong + d[i] * v[i];
     m:=m-d[i];
     e[b[i]]:=d[i];
     end
      else
       begin
        tong := tong + m * v[i];
        e[b[i]] := m;
        m := 0;
       end;
    end;
 for i:=1 to n do
  writeln(g,e[i]);
 writeln(g,tong);
end;
begin
 input ;
 output ;
close(f);
close(g);
end.