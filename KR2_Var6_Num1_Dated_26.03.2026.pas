program var6num1;
var a,d,c: real;
begin
  write('Введите a d c через пробел: ');
  readln(a,d,c);
  a:= 2*a - 1;
  if a <> 0 then
  begin
    d:= ArcTan(c - d/2)/a;
    writeln('Результат формулы: ', d);
  end
  else
    writeln('Произошло деление на ноль!');
end.