uses    math;
const   fi = 'input.inp';
	fo = 'output.out';
var     m,n,i,j,maxf : integer;
	a : array[0..1001,0..1001] of 0..1;
	f : array[0..1001,0..1001] of integer;
 
begin
	assign(input,fi);
	reset(input);
	assign(output,fo);
	rewrite(output);
	readln(m,n);
	for i := 1 to m do
		for j := 1 to n do
		    read(a[i,j]);
	for j := 0 to n+1 do f[1,j] := 1;
	for i := 0 to m+1 do f[i,1] := 1;
	for i := 1 to m do
		for j := 1 to n do
			if  (a[i,j] = a[i-1,j]) and
			    (a[i,j] = a[i,j-1]) and
			    (a[i,j] = a[i-1,j-1])    then
			    f[i,j] := min(f[i-1,j],min(f[i,j-1],
						 f[i-1,j-1])) + 1
			else
			    f[i,j] := 1;
	maxf := 1;
	for i := 1 to m do
		for j := 1 to n do
			maxf := max(maxf,f[i,j]);
	writeln(maxf);
       
	close(input);
	close(output);
end.
