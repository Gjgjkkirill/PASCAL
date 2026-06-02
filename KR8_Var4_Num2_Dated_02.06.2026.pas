var
  choice, a, b: integer;

procedure first();
begin
  writeln('sin(a) = ', sin(a));
end;

procedure second();
begin
  writeln('(a + b) / 2 = ', (a + b) / 2);
end;

procedure third();
begin
  writeln('sin(a) / cos(b) = ', sin(a) / cos(b));
end;

begin
  writeln('Выберите операцию:');
  writeln('1 - sin(a),');
  writeln('2 - (a + b) / 2,');
  writeln('3 - sin(a) / cos(b)');
  readln(choice);
  if not ((choice = 1) or (choice = 2) or (choice = 3)) then begin
    writeln('Неверный код операции!');
    exit
  end;
  writeln('=====================');
  write('Введите числа: ');
  readln(a, b);
  writeln('=====================');
  writeln('Результат вычислений:');
  if choice = 1 then first()
  else if choice = 2 then second()
  else third();
end.