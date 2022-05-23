const
    mn=2002; 
    bl=#32;
    nl=#13#10;
  	fn='bai1.inp'; gn = 'doan.out';
type
  KieuDoan = record
			   a,b: integer;
			   id: integer; { Chỉ số đoạn }
			  end;
  md1 = array[0..mn] of KieuDoan;
  mi1 = array[0..mn] of integer;
var n: integer; { n - so luong doan }
	d: md1; { cac doan }
	f,g: text;
	t: mi1;
	x, y: integer; { Doan can phu }
procedure Doc;
 var i: integer;
begin
  assign(f,fn); reset(f); readln(f,n);
  readln(f,x, y);
  for i := 1 to n do
   begin
	 readln(f,d[i].a,d[i].b);
	 d[i].id := i;
   end;
  close(f);
end;
procedure Qsort(l,r: integer): tự viết
(*----------------------------------------
   Duyet nguoc cac doan d[s..e]
   tim doan i dau tien thoa d[i].a <= x
  ---------------------------------------*)
function Tim(s,e,x: integer): integer;
var i: integer;
begin
  Tim := 0;
  for i := e downto s do
	if (d[i].a <= x) then
	  begin
		Tim := i;
		exit;
	  end;
end;
procedure Ket(k: integer): tự viết
procedure XuLi;
var i,j,k,v: integer; { k - so doan tim duoc }
begin
  v := x;
  k := 0; t[k] := 0;
  repeat
	j := Tim(t[k]+1,n,v);
	if (j = 0) then { Khong tim duoc }
	   begin  Ket(0); { vo nghiem } exit;  end;
	v := d[j].b; k := k + 1; t[k] := j;
  until (v >= y);
  Ket(k); { co nghiem }
end;
BEGIN
  doc; qsort(1,n); xuli;
END.