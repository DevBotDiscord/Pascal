const fi='input.inp';
      fo='output.out';
var m,n,k,l:longint;
    f,g:text;
    a,b:array[1..2000] of longint; 
procedure nhap;
  begin
    assign(f,fi);
    reset(f);
    assign(g,fo);
    rewrite(g);
    readln(f,m,n);
  end;

procedure pt1;
  var i:longint;
begin
  for i:=2 to trunc(sqrt(n)) do
  if n mod i =0 then begin
    while n mod i = 0 do 
    n:=n div i;
    k:=k+1;
    a[k]:=i;
  end;
  if n>1 then begin
    k:=k+1;
    a[k]:=n;
  end;
end;
procedure pt2;
var j:longint;
begin
  l:=0;
  for j:=2 to trunc(sqrt(m)) do
  if m mod j = 0 then begin
    while m mod j=0 do
    m:=m div j;
    l:=l+1;
    b[l]:=j;
  end;
  if m>1 then begin
    l:=-l+1;
    b[l]:=m;
  end;
end;
procedure xl;
  var ok:Boolean;
    i:longint;
begin
  ok:=true;
  if k<>1 then ok:= false else
  for i:=1 to k do 
  if a[i] <> b[i] then begin
    ok:=false;
    break;
  end;
  if ok=true then writeln(g,'1') else writeln(g,'0');
end;

begin
  nhap;
  pt1;
  pt2;
  xl;
  close(f);
  close(g);
end.