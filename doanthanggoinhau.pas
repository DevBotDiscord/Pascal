program DoanGoi1;
uses crt;
const
  mn = 1001; bl = #32; nl = #13#10;
  fn = 'doan.inp'; gn = 'doan.out';
type
  KieuDoan = record a,b: integer; end;
  md1 = array[0..mn] of KieuDoan;
  mi1 = array[0..mn] of integer;
var n,m: integer; { n – số lượng đoạn, m – số đoạn được chọn }
    d: md1; { các đoạn d[1..n]}
    f,g: text;
    c: mi1; { c[i] = số lượng max các đoạn gối nhau đến i }
procedure Doc; 
procedure Qsort(t,p: integer);
procedure XuLi;
var i,j: integer;
begin
  c[1] := 1;
  for i := 2 to n do { Tính c[i] }
    begin
      c[i] := 0;
        for j := i-1 downto 1 do
          begin
            if (d[j].b < d[i].a)  { doan j khong noi voi i }
            then break;
            if (d[j].b = d[i].a) then { j noi voi i }
               if (c[j] > c[i]) then c[i] := c[j];
          end;
      c[i] := c[i] + 1;
    end;
end;
procedure Ket; { Tim c max va hien thi ket qua }
var i,imax: integer;
begin
  assign(g,gn); rewrite(g);
  imax := 1;
  for i := 2 to n do
    if (c[imax] < c[i]) then imax := i;
  writeln(g,c[imax]); close(g);
end;
BEGIN
  Doc; Qsort(1,n); XuLi;  Ket;
END.