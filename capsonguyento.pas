const fi='prime.inp';
      fo='prime.out';

var x,N:integer;
    f,g:text;

function prime(n:integer):boolean;
var i:longint;
    begin
        if n<2 then exit(false);
        for i:=2 to trunc(sqrt(n)) do
        if n mod i=0 then exit(false);
        exit(True);
    end;

procedure xuli(N:integer);
var i,t,t1:longint;
    begin
        for i:=1 to n div 2 do
        begin
            if prime(i)=true then
            begin
            t:=n-i;
            if prime(t)=true then
             writeln(g,i,' ',t);
            end;
        end;
    end;

procedure nhap(var N:integer);
begin
        assign(f,fi); reset(f);
        assign(g, fo); rewrite(g);
        while not eof(f) do
        begin
        readln(f,n);
        xuli(n);
        end;
end;
begin
nhap(N);
close(f);
close(g);
end.