var
  a: array[1..25] of integer;
  i, n: integer;
  min, max: integer;
  nmax, nmin: integer;
  temp: integer;
begin
  writeln('Введите количество элементов:');
  readln(n);
  for i := 1 to n do a[i] := Random(25);
  writeln('Исходный массив:');
  for i := 1 to n do writeln(a[i]:4);
  max := a[i];
  min := a[i];
  for i := 2 to n do
    if a[i] > max then 
    begin
      max := a[i];
      nmax := i;
    end;
  for i := 2 to n do
    if a[i] < min then 
    begin
      min := a[i];
      nmin := i;    
    end;
  temp := a[nmax];
  a[nmax] := a[nmin];
  a[nmin] := temp;  
  writeln('Номер максимально элемента:', ' ', nmax);
  writeln('Номер минимально элемента:', ' ', nmin);
  writeln('------------------------------------');
  writeln('Преобразованные массив:');
  for i := 1 to n do writeln(a[i]:4);
end.