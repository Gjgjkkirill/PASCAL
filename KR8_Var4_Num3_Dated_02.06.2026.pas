var
  choice: integer;

procedure circle();
var
  r: integer;
begin
  writeln('Формула вычисления: S = 2*pi*R');
  write('Введите радиус: ');
  readln(r);
  writeln('=====================');
  writeln('Результат вычисления: S = ', 2 * pi * r);
end;

procedure ractangle();
var
  a, b, h: integer;
begin
  writeln('Формула вычисления: S = ((a+b)*h)/2');
  write('Введите два стороны и высоту: ');
  readln(a, b, h);
  writeln('=====================');
  writeln('Результат вычисления: S = ', ((a + b) * h) / 2);
end;

procedure triangle();
var
  a, b, c: integer;
begin
  writeln('Формула вычисления: S = 1/2*a*b*sin(C), где C - угол');
  write('Введите две стороны и угол: ');
  readln(a, b, c);
  writeln('=====================');
  writeln('Результат вычисления: S = ', (1 / 2) * a * b * sin(c));
end;

begin
  writeln('Выберите фигуру:');
  writeln('1 - окружность,');
  writeln('2 - трапеция,');
  writeln('3 - треугольник');
  readln(choice);
  if not ((choice = 1) or (choice = 2) or (choice = 3)) then begin
    writeln('Неверный код операции!');
    exit
  end;
  writeln('=====================');
  if choice = 1 then circle()
  else if choice = 2 then ractangle()
  else triangle();
end.