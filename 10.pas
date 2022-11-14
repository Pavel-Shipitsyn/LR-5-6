
const max=100;
var b:array[1..max] of integer;
    n,i,j:integer;
begin

randomize;
repeat
write('Размер массива n= ');
readln(n);
until n in [1..max];
writeln('Исходный массив:');
for i:=1 to n do
 begin
  b[i]:=random(10)-4;
  write(b[i],' ');
 end;
writeln;
i:=1;
while i<=n do
if b[i]<0 then
 begin
  for j:=i to n-1 do
  b[j]:=b[j+1];
  n:=n-1;
 end
else i:=i+1;
writeln('Без отрицательных элементов:');
for i:=1 to n do
write(b[i],' ');
readln
end.