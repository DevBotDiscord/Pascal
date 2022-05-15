uses crt;
type
hs=record
ho,ten:string[30];
end;

var
    t:array[1..100] of hs;
    i,n,m,j,stt,k:integer;
    ho1,ten1,dem:string[30];

procedure input;
begin
    write('So thanh vien trong danh sach : ');readln(stt);
    for i:=1 to stt do
        begin
            write('Nhap Ho va ten nguoi thu ',i,' : '); readln(dem);
            k:=length(dem);
        repeat k:=k-1 until dem[k]=' ';
    t[i].ho:=copy(dem,1,k);
    t[i].ten:=copy(dem,k+1,length(dem));
    end;
end;

procedure output;
begin
    {Dua ra man hinh}
    writeln('Danh sach sau sap xep: ');
    for i:=1 to stt do writeln(i,' : ',t[i].ho, t[i].ten);
end;

procedure swap;
begin
    ho1:=t[i].ho;
    ten1:=t[i].ten;
    t[i].ho:=t[j].ho;
    t[i].ten:=t[j].ten;
    t[j].ho:=ho1;
    t[j].ten:=ten1;
end;
procedure sapxep;
begin
    {Sap xep}
    for i:=1 to stt do
    for j:= stt downto i+1 do
    begin
        if t[i].ten > t[j].ten then swap;
        if t[i].ten = t[j].ten then
        if t[i].ho > t[j].ho then swap
    end;
end;
begin
    input;
    sapxep;
    output;
    readln;
end.