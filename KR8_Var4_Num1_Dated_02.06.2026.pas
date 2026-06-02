var
  n, i: integer;
  sides: array of integer;

procedure printSquare(i: integer);
begin
  writeln(i, ' квадрат: сторона - ', sides[i], ' ед., периметр - ', sides[i] * 4, ' ед., площадь - ', sides[i] * sides[i], ' кв.ед.');
end;

begin
  write('Введите количество квадратов: ');
  readln(n);
  if n = 0 then begin
    writeln('Количество квадратов должно превышать 0!');
    exit
  end;
  sides := new integer[n + 1];
  i := 0;
  repeat
    i += 1;
    write('Введите сторону ', i, ' квадрата: ');
    readln(sides[i]);
  until i = n;
  writeln('===================');
  writeln('Результат:');
  for i := 1 to n do
    printSquare(i);
end.