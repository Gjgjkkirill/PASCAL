program quadraticEquation;
var a, b, c, D, x1, x2: real;

begin
  write('Введите параметры уравнения (a,b,c) через пробел: ');
  readln(a,b,c);
  
  if a = 0 then
    begin
    writeln('Линейное уравнение');
    if (b <> 0) and (c <> 0) then
      begin
      x1:= -c / b;
      writeln('Корень уравнения: ', x1);
      end
    else
      writeln('Введено меньше двух ненулевых параметров!');
    end
  else
    if (b <> 0) and (c <> 0) then
      begin
      writeln('Полное квадратное уравнение');
      D:= b*b - 4 * a * c;
      if D > 0 then
        begin
        writeln('Дискриминант больше нуля');
        x1:= (-b + sqrt(D)) / (2*a);
        x2:= (-b - sqrt(D)) / (2*a);
        writeln('Корни уравнения: ', x1, ', ', x2);
        end
      else
        if D = 0 then
          begin
          writeln('Дискриминант меньше нуля');
          x1:= -b / (2*a);
          writeln('Корень уравнения: ', x1);
          end
        else
          writeln('Нет корней!')
      end
    else
      if (b = 0) and (c <> 0) then
        begin
        writeln('Неполное квадратное уравнение без b');
        if -c / a >= 0 then
          begin
          writeln('Возможно извлечь корень');
          x1:= sqrt(-c / a);
          writeln('Корень уравнения: +-', x1);
          end
        else
          writeln('Нет корней!');
        end
      else
        begin
        writeln('Неполное квадратное уравнение без c');
        x1:= 0;
        x2:= -(b/a);
        writeln('Корни уравнения: ', x1, ', ', x2);
        end;
end.