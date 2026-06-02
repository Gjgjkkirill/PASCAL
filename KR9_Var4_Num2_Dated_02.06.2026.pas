var
  a, n, x: integer;

function fct(n: integer): integer;
begin
  if n = 1 then fct := 1
  else fct := n * fct(n - 1);
end;

begin
  writeln('Выражение F(x) = (n! - x^4 + a^3) / (x-a)');
  write('Введите x,a,n: ');
  readln(x, a, n);
  writeln('=====================');
  if (x - a) = 0 then begin
    writeln('Знаминатель достиг 0!');
    exit
  end;
  n := fct(n);
  writeln('n! = ', n);
  writeln('a^3 = ', power(a, 3));
  writeln('x^4 = ', power(x, 4));
  writeln('Знаминатель = ', x - a);
  writeln('=====================');
  writeln('F(', x, ') = ', (n - power(x, 4) + power(a, 3)) / (x - a));
end.