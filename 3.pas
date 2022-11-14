const n = 20;
var a: array [1..n] of integer;
var max: integer;
 var min: integer;
begin
for var i := 1 to n do
a[i] := Random(10, 100);
foreach v: integer in a do
write(v, ' ');
writeln;
max := a.Max();
min := a.Min();
writeln('max = ', max);
writeln('min = ', min);
end.