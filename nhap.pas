program XepDoan;
uses crt;
const
 bl = #32;  fn = 'bai2.inp';  mn = 1001;
type KieuDoan = record x: integer; d: integer; end;
     md1 = array[0..mn] of KieuDoan;
var  c: md1; { chua cac doan }
     n: integer;
     f: text;
procedure Doc;
 var i: integer;
begin
  assign(f,fn); reset(f); readln(f,n);
  for i := 1 to n do readln(f,c[i].x,c[i].d);
  close(f);
end;
(*---------------------------------
     Sap tang cac doan theo
     diem dau x
 ---------------------------------*)
procedure Qsort(t,p: integer);
function max(a,b: integer): tự viết
function Tong: longint;
var t: longint; { tong do dai }
    a, b: integer; { lan [a, b] }
    i: integer;
begin
  t := 0;
  a := c[1].x; b := a + c[1].d; { Khoi tri lan }
  for i := 2 to n do
    if (c[i].x <= b) then b := max(b,c[i].x + c[i].d)
     else
     begin
       t := t + (b - a);
       a := c[i].x; b := a + c[i].d;
     end;
  Tong := t + (b - a);
end;
BEGIN
  Doc; Qsort(1,n); writeln(Tong);
END.
