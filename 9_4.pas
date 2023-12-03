
var
  a1, a2: array[1..10] of integer;
  sum1, sum2, i: integer;

begin
  sum1 := 0;
  sum2 := 0;
  begin
  // Заполняем оба массива случайными числами
  writeln('Первый массив:');
  for i := 1 to 10 do
  begin
    a1[i] := Random(21) - 10; // Генерируем числа от -10 до 10
    write(a1[i],' ');
    end;
    writeln;
    if a1[i] > 0 then
      sum1 := sum1 + a1[i];
  end;
  writeln;
  writeln('Второй массив:');
  begin
  for i := 1 to 10 do
  begin
    a2[i] := Random(21) - 10; // Генерируем числа от -10 до 10
    write(a2[i],' ');
    end;
    writeln;
    if a2[i] > 0 then
      sum2 := sum2 + a2[i];
  end;
  
  // Проверяем суммы и умножаем массив, если sum1 < sum2
  if sum1 < sum2 then
  begin
    writeln('Сумма положительных элементов в первом массиве меньше');
    writeln('Результат умножения первого массива на 10:');
    for i := 1 to 10 do
    begin
      a1[i] := a1[i] * 10;
      write(a1[i]);
    end;
  end
  else
  begin
    writeln('Сумма положительных элементов во втором массиве меньше');
    writeln('Результат умножения второго массива на 10:');
    for i := 1 to 10 do
    begin
      a2[i] := a2[i] * 10;
      write(a2[i],' ');
    end;
  end;
end.