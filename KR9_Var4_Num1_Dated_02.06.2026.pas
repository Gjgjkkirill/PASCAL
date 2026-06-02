var
  n, i, S, P: integer;
  sides: array of integer;

function area(a: integer): integer;
begin
  area := a * a
end;

function perimetr(a: integer): integer;
begin
  perimetr := a * 4;
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
  begin
    S := area(sides[i]);
    P := perimetr(sides[i]);
    writeln(i, ' квадрат: сторона - ', sides[i], ' ед., периметр - ', P, ' ед., площадь - ', S, ' кв.ед.');
  end;
end.