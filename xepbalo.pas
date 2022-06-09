const
	fi = 'BaLo.inp';      fo = 'BaLo.out';
var
	a,id: array[1..200] of integer;
	gdv: array[1..200] of integer;
	f, g: text;
	n,m: integer;
	t,tt: integer;
procedure Doc;
var i,k: integer;
begin
	assign(f,fi);reset(f);
	assign(g,fo);rewrite(g);
	readln(f,n,m);
	for i:=1 to n do read(f,a[i],gdv[i]);
end;
procedure InitID;
var i: integer;
begin
for i := 1 to n do id[i] := i;
end;

procedure IDQuickSort(d,c: integer);
var i, j, k, x: integer;
begin
	i := d; j := c;
	x := gdv[id[(i+j) div 2]]; 
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
tt := 0; 
t := m; 
for i :=1 to n do
if t >= a[id[i]] then
begin
	t := t-a[id[i]];
	tt :=  tt + (a[id[i]]*gdv[id[i]]);
end
else
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
// procedure xuli;
// var
// begin 
// for i := 1 to n do id[i] := i;

// end;
BEGIN
Doc; InitID; IDQuickSort(1,n);
XepBaLo; Ghi;
END.