const fi='hoahoc.inp';
      fo='hoahoc.out';
var f,g:text; s:string;

procedure nhap;
begin
assign(f,fi);reset(f);
assign(g,fo);rewrite(g);
readln(F,s);
end;


procedure tima;
var   i,j,d:longint;
begin
d:=0;
for i:=1 to length(S) do
if s[i] in ['A'..'Z'] then inc(d);
writeln(g,d);
end;

{function kt(i,j:longint):boolean;
var k:longint;
begin
for k:=i to j do
if s[i] in ['A'..'Z'] then exit(false);
exit(true);
end;     }


procedure timb;
var   i,kq,d,t,j,x,x1:longint;
begin
t:=0;
for i:=1 to length(s)-1 do
begin
if (s[length(s)] in ['A'.. 'Z']) or (s[length(s)] in ['a'.. 'z']) then s:=s+'1';
if (s[i] in ['A'..'Z']) and (s[i+1] in ['A'..'Z']) then insert('1',s,i+1);
if (s[i] in ['a'..'z']) and (s[i+1] in ['A'..'Z']) then insert('1',s,i+1);
end;
writeln(g,s);
for i:=1 to length(s) do
 if ((s[i] in ['1'..'9']) and (s[i+1] in ['A'..'Z']) and (s[i-1] in ['A'..'Z']))
 or (i=length(s))
 then
 begin
  val(s[i],x,kq);
  t:=t+x;
 end
 else
 if (s[i] in ['1'..'9']) and (s[i+1] in ['1'..'9'])
 then
  begin

  val(s[i],x,kq);
  val(s[i+1],x1,kq);
  t:=t+(x*10+x1);
  end;

 write(g,t);


end;



begin
nhap;
tima;
timb;
close(f);
close(g);
end.