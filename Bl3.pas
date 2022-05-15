Const fin ='BL3.INP';

fout='BL3.OUT';

Var S:String;

i,d,max:Integer;

f:Text;

Begin

Assign(f,fin);

Reset(f);

Read(f,S);

Close(f);

max:=0;

d:=0;

S:=S+'a';

For i:=1 to length(S) do

If S[i]=' ' then d:=d+1

Else

Begin

If d>max then max:=d;

d:=0;

End;

Assign(f,fout);

ReWrite(f);

Write(f,max);

Close(f);

End.