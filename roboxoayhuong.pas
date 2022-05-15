const fi='robo.inp';
      fo='robo.out';
var f,g:text;
    z:String;
procedure nhap;
begin
      assign(f,fi);
      reset(f);
      assign(g,fo);
      rewrite(g);
      readln(f,z);
end;
procedure xuli;
var n,i,d:longint;
begin
      d:=0;
      for i:=1 to length(z) do
      if 'T'=z[i] then inc(d) else dec(d);
            n:=d mod 4;
      if n=0 then write(g,'B');
      If n=1 then write(g,'T');
      if n=2 then write(g,'N');
      if n=3 then write(g,'D');
      end;
begin
      nhap;
      xuli;
      close(f);
      close(g);
end.