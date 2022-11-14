
var a:array [-22..93] of integer;
    i, k: integer;
begin
     for i:=1 to 20 do
         begin
              a[i]:=random(20);
              write (a[i],' ');       
         end;
     k:=0;
     i:=1;                               
      while i<93 do
            begin
            if a[i] mod 2=0 then         
               inc(k);    
            i:=i+2;
            end;
      writeln;
      writeln ('Количество четных элементов, стоящих на нечетных местах = ', k);
end.