program basic;
var
  i, OperatorIndex: integer;
  a, b: real;
  str: string;
  operands:= ['+','-','/','*','^'];

// Checking if the string has operands inside
function check(str: string): integer;
begin
  if Pos(operands[i],str) <> 0 then
    Result:= Pos(operands[i],str)
  else
    Result:= 0
end;

// Executing math based on three parts of the equation
function execute(a: real; b: real; Operand: string): real;
begin
  case Operand of
    '-': Result:= a-b;
    '+': Result:= a+b;
    '/': Result:= a/b;
    '*': Result:= a*b;
    '^': Result:= Power(a,b);
  end;
end;

// MAIN
begin


writeln('Для выхода введите "exit"');
write('Введите выражение: '); readln(str);

// Пока мы не написали exit
while str <> 'exit' do begin

  // Цикл по длине операндов  
  for i:= 0 to operands.Length - 1 do begin
    // Проверка на вхождение оператора в строку  
    OperatorIndex:= check(str);
    if OperatorIndex <> 0 then
      begin
        // Разделени строки на части до и после индекса оператора
        a:= StrToReal(Copy(str, 1, OperatorIndex - 1));
        b:= StrToReal(Copy(str, OperatorIndex + 1, str.Length));
        // writeln(operands[i]);
        
        // Вывод результата вычисления
        writeln('Результат: ', execute(a,b,operands[i]));
        // Прерывание цикла
        break
      end;
    // Если мы проверили последний индекс списка и не вышли из цикла
    if i = operands.Length - 1 then
      // Выводим ошибку
      writeln('Неверно задано выражение!');
  end;
  
  // Повтор чтения переменной выражения
  write('Введите выражение: '); readln(str);
end;


end.