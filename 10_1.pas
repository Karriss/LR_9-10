const
  M = 6;
  N = 8;

type
  TMatrix = array[1..M, 1..N] of integer;
  TArray = array[1..M] of integer;

var
  matrix: TMatrix;
  resultArray: TArray;
  i, j: integer;
  found: boolean;

begin
  // Заполняем двумерный массив случайными числами от -10 до 10
  randomize;
  for i := 1 to M do
  begin
    for j := 1 to N do
    begin
      matrix[i, j] := random(21) - 10; // случайное число от -10 до 10
      write(matrix[i, j], ' ');
    end;
    writeln;
  end;
  
  // Формируем одномерный массив
  for i := 1 to M do
  begin
    found := false;
    for j := 1 to N do
    begin
      if abs(matrix[i, j]) > 4 then
      begin
        resultArray[i] := matrix[i, j];
        found := true;
        break;
      end;
    end;
    if not found then
      resultArray[i] := 0;
  end;
  
  // Выводим одномерный массив
  writeln('Результат:');
  for i := 1 to M do
    write(resultArray[i], ' ');
end.