const fi='bai3.inp';
			fo='bai3.out';
var A,F:array[0..2*100000]of Qword;
	N,K:longint;
	f1,g:text;

procedure taodayfibo(M:longint)
begin
	F[1]:=1;
	F[2]:=1;
	K:=2;
	while (F[K]<=M) do
	begi
		 K:=K+1;
		 F[K]:=F[K-2]+F[K-1];
	end;
	end;

procedure xuLi;
Var i,j:longint;
begin
	j:=0;
	for i:=k downto 1 do
	if F[i]<=N then begin inc(j);A[j]:=F[i];
 N:=N-F[i];end;
	if N=0 then for i:=1 to j do write(g,A[i],' ')
	else write(g,'0');
end;

begin
	assign(f1,fi);reset(f1);
	assign(g,fo);rewrite(g)
	readln(fi,n);
end;

begin
	nhap;
	taodayfibo(N);
	xuli;
	close(f1);
	close(g);
end.