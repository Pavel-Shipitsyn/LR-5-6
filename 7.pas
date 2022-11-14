begin
  var a:=ArrRandom(ReadInteger('Введите размер массива: '),-20,20); a.println;
  var s:=1;
  var max:=0;
  for var i:=0 to a.Length-2 do
   begin
    if a[i]<a[i+1]
      then s+=1
      else 
        if s>max
          then max:=s
          else s:=1;
   end;
  Writeln('Максимальная длина неубывающего участка-> ',max);   
end.