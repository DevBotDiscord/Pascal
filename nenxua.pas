const fi='nenxau.inp';
	  fo='nenxau.out';
var f,g:text;
	s:string;
procedure nhap;
begin 
	assign(f,fi); reset(f);
	assign(g,fo); rewrite(g);
	readln(f,s);
end;
procedure xulia;
Var i:longint; s1:string;
Begin
	S1:='';
	For i:=1 to length(s) do 
	If s[i] in ['A'..'Z'] then s1:=s1+s[i];
	Write(g,s1);
End;
procedure timb;
var 
begin
	fillchar(a,sizeof(a),0); 
	for i:=1 to length(s) do 
    if s[i] in ['A'..'Z'] then x[s[i]]:=x[s[i]]+1; 
	for t:='A' to 'Z' do 
	if x[t]<>0 then writeln(g,t,x[t]); 
