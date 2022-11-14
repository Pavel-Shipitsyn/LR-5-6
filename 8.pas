begin
  var a:=ArrRandom(ReadInteger('Введите размер массива: '),-20,20); a.println;
   var s:=0;
   var max:=0;
  var maxi:=0;
  for var i:=0 to a.Length-1 do
   begin
     for var j:=0 to a.Length-1 do
       if a[i]=a[j] then s+=1;
     if s>max then begin max:=s; maxi:=i; end;
     s:=0;
   end;
  If max=1 then Writeln('Числа повторяются одинаково')
  else Writeln('Наиболее повторяющееся число->',a[maxi]);
end.