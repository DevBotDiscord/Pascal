program Ships;
{$B-}
uses crt;
const MN = 250;
boong = '1'; nuoc = '0';
Function Dem(fn: string):
integer;
var
f: text; d,i: integer;
x,y: string;{x:dong tren, y:dong duoi }
begin
Dem := 0; assign(f,fn);
{$I-} reset(f); {$I+}
 if IORESULT <> 0 then exit;
x := nuoc;
 for i := 1 to 8 do x:= x+x; {x = ‟00...0‟}
d := 0;
while NOT EOF(f) do
begin
readln(f,y);
if (y[1]=boong)AND(x[1]=nuoc) then d:=d+1;
for i:=2 to length(y) do
 if (y[i]= boong) AND (y[i-1]= nuoc)
 AND (x[i]= nuoc) then d:=d+1;
1 1 0 0 0 0 0 0 0
1 1 0 0 1 1 0 0 1
5 tàu
A 0 0 0 0 0 B
0 1 1 1 1 1
0 1 1 1 1 1
D 0 0 0 0 0 C
Con tàu ABCD