const fi='bai2.inp';
	  fo='bai2.out';
var f,g:text;
	n,m:longint;
	l:array[1..1000] of longint;

procedure nhap;
var i:longint;
begin
 	assign(f,fi); reset(f);
 	assign(g,fo); rewrite(g);
 	readln(f,m,n);
 	for i:=1 to n do 
 	read(f,l[i]);
end; 

procedure tim;
var i,du,t,d:longint;
begin 
	i:=0;
	while m<>0 do
	inc(i);
	m:=m div l[i];
	d:=d+1 ;bfbhib,jejbh jhesvovkjvis sjsniok bdpojbdmnbdkjjjjjm
	for i:=1 to n do 
	writeln(g,l[i],' ',du);
end;

begin 
	nhap;
	tim;
	close(f);
	close(g);
end.