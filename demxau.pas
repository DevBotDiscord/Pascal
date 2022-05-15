const fi='bai2.inp';
      fo='bai2.out';
var f,g:text;
    s:string;
procedure nhap;
var i:longint;
begin
	assign(f,fi); reset(f);
	assign(g,fo); rewrite(g);
	readln(f,s);
end;

function dx(x:string):boolean;
var i:longint;
    x1:string;
begin
	x1:='';
	for i:=length(x) downto 1 do
	x1:=x1+x[i];
	if x1=x then exit(true) else exit(false);
end;

procedure tim;
var i,j,d:longint;
    x:string;
begin
d:=0;
for i:=1 to length(s)-1 do
for j:=i+1 to length(s) do
        begin
        x:=copy(s,i,j-i+1);
        if (dx(x)) and (j-i+1>1) then inc(d);
        end;
writeln(g,d);
end;

begin
nhap;
tim;
close(f);
close(g);
end.