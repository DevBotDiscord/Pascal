const
      fi = 'hoanvi.inp';
      fo = 'hoanvi.out';
var f,g:text;
      S:string;
procedure xli;
var i,j:longint;
 t:char;
 begin
      assign(f,fi);reset(f);
      assign(g,fo);rewrite(g);
      readln(f,s);
       for i:=1 to length(s)-1 do 
       for j:=i+1 to length(s) do 
       if s[i]<s[j] then
       begin
             t:= s[i];
             s[i]:=s[j];
             s[j]:=t;
       end;
       write(g,s);
 end;
 begin
       xli;
       close(f);
       close(g);
 end.