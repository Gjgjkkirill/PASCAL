var
  OperatorIndex: integer; // indexes
  a, b: real; // the main working values for math
  str: string; // input string
  operands:= ['+','-','/','*','^']; // available operands
label Cycle;
// Executing math based on three parts of the equation
function CalcTwoValues(a: real; b: real; Operand: string): real; begin
  case Operand of
    '-': Result:= a-b;
    '+': Result:= a+b;
    '/': Result:= a/b;
    '*': Result:= a*b;
    '^': Result:= Power(a,b);
  end;
end;

function CheckValues(A: string; B: string; Operand: string): integer; begin
  Result:= 0;
  
  // Exception for invalid variable A type
  try 
    StrToReal(A)
  except on System.FormatException do begin
      writeln('Critical Error | Недопустимый тип значения 1');
      Result:= 1;
      exit;
    end;
  end;
  
  // Exception for invalid variable B type
  try 
    StrToReal(B)
  except on System.FormatException do begin
      writeln('Critical Error | Недопустимый тип значения 2');
      Result:= 1;
      exit;
    end;
  end;
  
  // Exception for division by zero
  if (Operand = '/') and (StrToInt(b) = 0) then begin
    writeln('Error | Недопустимо деление на ноль');
    Result:= 1;
  end;
end;

// Executes main math algorithm and takes only two-valued string
function Execute(Str: string): integer; begin
  // Looping through all operands
  for i: integer:= 0 to operands.Length - 1 do begin
    
    // Checks if the current operand is in the string
    OperatorIndex:= Pos(operands[i],Str);
    if OperatorIndex <> 0 then begin
      
        // Validify the values
        if CheckValues(Copy(Str, 1, OperatorIndex - 1), Copy(Str, OperatorIndex + 1, Str.Length), operands[i]) = 1 then begin
          Result:= 1;
          exit;
        end;
        
        // Turning them into real type
        a:= StrToReal(Copy(Str, 1, OperatorIndex - 1));
        b:= StrToReal(Copy(Str, OperatorIndex + 1, Str.Length));
        
        // Print the result
        writeln('Результат: ', CalcTwoValues(a,b,operands[i]));
        exit;
      end;
      
    // If we went through all of the operand and none of them matched
    if i = operands.Length - 1 then begin
      // Raising error
      writeln('Error | Неверно задано выражение');
      Result:= 1
    end;
    
  end;
end;


// ⬇
begin //------------------------------------------------------------------------------------------------------------------------------------------
// ⬆

writeln('Для выхода введите "exit"');

Cycle:
write('Введите выражение: '); readln(str);

// While user didnt enter exit
if str <> 'exit' then begin
  
  // Main work
  Execute(str);
  
  // Repeating the asking
  goto Cycle;
end;;

// Ending message
write('Спасибо, что воспользовались SC! До скорых встреч!');

// ⬇
end. //-------------------------------------------------------------------------------------------------------------------------------------------
// ⬆