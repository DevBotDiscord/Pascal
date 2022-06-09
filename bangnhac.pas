const
  MN = 200; BL = #32; {dau cach}
  fn = 'bangnhac.inp'; gn = 'bangnhac.out';
var
   a,id: array[1..MN] of integer;
   f, g: text;
   n: integer;
procedure Doc;
var i,k: integer;
begin
assign(f,fn); reset(f); read(f,n);
for i := 1 to n do read(f,a[i]);
close(f);
end;
procedure InitID;
var i: integer;
begin
for i := 1 to n do id[i] :=  i;
end;
procedure IDQuickSort(d,c: integer);
var i, j, m, x: integer;
begin
i :=  d;
j :=  c;
m :=  a[id[(i+j) div 2]]; {phan tu giua}
while i <= j do
begin
  while a[id[i]] < m do inc(i);
  while a[id[j]] > m do dec(j);
  if i <= j then
   begin
    x :=  id[i];
    id[i] :=  id[j];
    id[j] :=  x;
    inc(i); dec(j);
end;
end;
if d < j then IDQuickSort(d,j);
if i < c then IDQuickSort(i,c);
end;
procedure Ghi;
var i, t, tt: longint;
begin
assign(g,gn); rewrite(g);
t :=  0; {thoi gian tim va phat 1 bai} 
tt :=  0; {tong thoi gian cho n bai}
for i :=  1 to n do
begin
 t :=  t + a[id[i]];
 tt :=  tt + t;
  writeln(g,id[i],' ',t);
end;
writeln(g,tt); close(g);
end;
BEGIN
Doc; InitID; IDQuickSort(1,n); Ghi;
END.