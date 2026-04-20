var 
  L: array [1..5] of integer;
  i: integer;
begin
  write('Введите пять чисел: ');
  for i:=1 to 5 do begin
    read(L[i]);
    L[i]:= L[i]*2;
  end;
  write('Результат: ');
  for i:=1 to 5 do
    write(L[i]:2);
end.