program functio;
var x: real;
begin
  write('Введите x: ');
  readln(x);
  if x < 0 then
    writeln(x*x)
  else
    begin
      if x > 0 then
        writeln(sqrt(x))
      else
        writeln(cos(x));
    end;
end.
