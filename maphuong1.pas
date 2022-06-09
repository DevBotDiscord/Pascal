procedure tim;
var i,j,k:longint;
begin
i:=1;
j:=n div 2+1;
for k:=1 to n*n do
        begin
        a[i,j]:=k;
        if k mod n=0 then i:=i+1
        else
                begin
                i:=i-1;
                j:=j+1;
                end;
        if i=0 then i:=n;
        if j>n then j:=j mod n;
        end;

for i:=1 to n do
        begin
        for j:=1 to n do
        write(g,a[i,j],' ');
        writeln(g);
        end;
writeln(g);
end;