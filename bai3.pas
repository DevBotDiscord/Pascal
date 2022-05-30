const fi='bai3.inp';
	  fo='bai3.out';
var s: string;
	j:byte;
function mahoa(a:char): char;
		var t: array[0..25] of char;
			ch: char;
			x,i: byte;
		begin
				i:=0;
				for ch:='a' to 'z' do
						begin
						t[i]:=ch;
						inc(i);
						end;
				for i:=0 to 25 do
						if t[i]=a then
								begin
								x:=i;
								break;
								end;
				i:=(x+5) mod 26;
				mahoa:= t[i];
		end;
begin
		write(' Nhap xau can ma hoa: ');
		readln(s);
		writeln(' Xau ma hoa la:');
		for j:=1 to length(s) do
				write(mahoa(s[j]));
		readln
end.