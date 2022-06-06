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
Var Fibonacy, vitri: array[1..100] of integer;
   t, i, d, j: integer;
   ok: boolean;
Begin
   Fibonacy[1]:= 1;
   Fibonacy[2]:= 1;
   t:= 1;
   d:= 2;
   ok:= true;
   While t < n do
      begin
         inc(d);
         Fibonacy[d]:= Fibonacy[d-1]+ Fibonacy[d-2];
         t:= Fibonacy[d];
      end;
   t:= n;
   j:= 0;
   For i:= d downto 1 do
      begin
         If Fibonacy[i] <= t then
            begin
               inc(j);
               Vitri[j]:= i;
               t:= t - Fibonacy[i];
            end;
      end;
      If t <> 0 then ok:= false;
      If Ok = true then
            for i:= 1 to j do
                                begin
                                If i <> j then
                                write(g, Fibonacy[vitri[i]], ' + ') else
                                write(g, Fibonacy[vitri[i]])
                                end
                                else write(g, 'Khong the bieu dien ');

end;
Begin
   nhap;
   Xuli;
   close(f);
   close(g);
end.