var 
  L: array [1..5] of integer;
  i: integer;
  sum: real;
begin
  sum:=0;
  write('Введите пять чисел: ');
  for i:=1 to 5 do begin
    read(L[i]);
    sum:= sum + L[i];
  end;
  write('Среднее арифметическое: ', sum/5);
end.