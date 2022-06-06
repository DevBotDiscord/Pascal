const fi='fibo.inp';
      fo='fibo.out';
Var f,g: text;
    n: integer;
Procedure nhap;
Begin
   Assign(f,fi);
   Reset(f);
   assign(g,fo);
   rewrite(g);
   read(f,n);
end;
Procedure Xuli;
Var fibo,vt: array[1..100] of integer;
   t, i, d, j: integer;
   ok: boolean;
Begin
   fibo[1]:=1;
   fibo[2]:=1;
   t:=1;
   d:=2;
   ok:=true;
   While t<n do
      begin
         inc(d);
         fibo[d]:=fibo[d-1]+fibo[d-2];
         t:=fibo[d];
      end;
   t:=n;
   j:=0;
   For i:=d downto 1 do
      begin
         If fibo[i]<t then
            begin
               inc(j);
               vt[j]:=i;
               t:=t-fibo[i];
            end;
      end;
      If t<>0 then ok:=false;
      
      If ok=true then
      begin 
      		write(g,n,'=');
            for i:= 1 to j do
              begin
              If i <> j then
              write(g, fibo[vt[i]], '+') else
              write(g, fibo[vt[i]])
              end
      end
      else write(g, 'Khong the bieu dien ');

end;
Begin
   nhap;
   Xuli;
   close(f);
   close(g);
end.