const
  nmax= 100;
type
  Tarr=array[1..nmax] of integer;
var
  a:Tarr;
  i,j,min,n:integer;
begin
  randomize;
  repeat
    write('Размер массива:  ');
    readln(n);
  until n in [1..nmax];
  writeln('Исходный массив:');
  for i:=1 to n do
    begin
      a[i]:=random(5);
      write(a[i]:4);
    end;
  writeln;
  
  min:=a[1];
  for i:=2 to n do
    if a[i]<min then
      min:=a[i];
  
  i:=1;
  while i<=n do
    if a[i]=min then
      begin
        if i=n then
          dec(n)
        else
          begin
            for j:=i to n-1 do
              a[j]:=a[j+1];
            dec(n);
          end;
      end
    else
      inc(i);
  writeln('Полученный массив:');
  if n<>0 then
    for i:=1 to n do
      write(a[i]:4)
 
end.