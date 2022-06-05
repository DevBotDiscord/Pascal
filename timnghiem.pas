const fi='nghiem.inp';
      fo='nghiem.out';
var f,g:text;
    n:longint;
    a,b:array[0..1000]of longint;
procedure nhap;
var i:longint;
begin
    assign(f,fi);reset(f);
    assign(g,fo);rewrite(g);
    readln(f,n);
end;
procedure xuli;