program var6num2;
var a,d,c: real;
begin
  write('Введите a d c через пробел: ');
  readln(a,d,c);
  a:= a*a - 1;
  if a <> 0 then
  begin
    d:= (4 * Sin(c) - (d/2) + 23) / a;
    writeln('Результат формулы: ', d);
  end
  else
    writeln('Произошло деление на ноль!');
end.