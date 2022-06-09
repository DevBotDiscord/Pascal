const
  MN = 200;
  fn = 'BaLo.inp';      gn = 'BaLo.out';
var
	  a,id: array[1..MN] of integer;{a[i] tr lg vat i}
	  gdv: array[1..MN] of integer; {gdv[i] don gia vat i}
f, g: text;
n,m: integer; {n: so vat; m: trong luong balo}
t,tt: integer;
{t: tong trong luong con duoc xep vao balo}
{tt: tong gia tri da lay}
(*----------------------------------
			Doc du lieu
-----------------------------------*)
procedure Doc;
var i,k: integer;
begin
assign(f,fn); reset(f); readln(f,n,m);
for i :=  1 to n do read(f,a[i],gdv[i]);
close(f);
end;
(*------------------------------------
		 Khoi tri cho chi dan
--------------------------------------*)
procedure InitID;
var i: integer;
begin
for i := 1 to n do id[i] := i;
end;
(*--------------------------------------
		Sap giam theo gia don vi
----------------------------------------*)
procedure IDQuickSort(d,c: integer);
var i, j, k, x: integer;
begin
i := d; j := c;
x := gdv[id[(i+j) div 2]]; {phantu giua}
while i <= j do
begin
while gdv[id[i]] > x do inc(i);
while gdv[id[j]] < x do dec(j);
if i <= j then
	begin
		  k := id[i];
		  id[i] := id[j];
		  id[j] := k;
		  inc(i); dec(j);
	end;
end;
if d < j then IDQuickSort(d,j);
if i < c then IDQuickSort(i,c);
end;
procedure XepBaLo;
var i: integer;
begin
tt := 0; {tong gia tri }
t := m; {trong luong con lai cua balo }
for i :=1 to n do
if t >= a[id[i]] then
begin { lay tron vat id[i] }
	t := t-a[id[i]];
	tt :=  tt + (a[id[i]]*gdv[id[i]]);
end
else { lay cho day balo }
begin
	tt :=  tt+(t*gdv[id[i]]); {lay vua du }
	a[id[i]] :=  t; {chinh lai vat cuoi }
	t := 0;
end;
end;
procedure Ghi;
var i: integer;
begin
assign(g,gn);  rewrite(g);
for i := 1 to n do writeln(g,a[i]);
writeln(g,tt); close(g);
end;
BEGIN
Doc; InitID; IDQuickSort(1,n);
XepBaLo; Ghi;
END.