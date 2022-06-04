const fi='kcach.inp';
      fo='kcach.out';
var f,g:text;
	n1,n2:longint;
procedure nhap;
begin 
	assign(f,fi); reset(f);
	assign(g,fo); rewrite(g);
	readln(f,n1);
	readln(f,n2);
function d(x,y:longint):longint;
var s,i:longint;
begin 
	for i:=0 to 9 do 
	if ((x+i) mod 10 =y) or ((y+i) mod 10 = x) then exit(i);
end;
procedure xuli;
var 