var 
  L: array [1..5] of integer;
  i, min: integer;
begin
  min:=0;
  write('Введите пять чисел: ');
  for i:=1 to 5 do begin
    read(L[i]);
    if L[i] < min then
      min:= L[i];
  end;
  write('Минимальное: ', min);
end.