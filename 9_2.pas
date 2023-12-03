program MaxMinElements;

const
  N = 10; // размер массива

type
  TArray = array[1..N] of Integer;

var
  A: TArray;

procedure FindMaxElement(var arr: TArray; var maxElement: Integer; var maxElementIndex: Integer);
var
  i: Integer;
begin
  maxElement := arr[1];
  maxElementIndex := 1;

  for i := 2 to N do
  begin
    if arr[i] > maxElement then
    begin
      maxElement := arr[i];
      maxElementIndex := i;
    end;
  end;
end;

procedure FindMinAbsElement(var arr: TArray; var minAbsElement: Integer; var minAbsElementIndex: Integer);
var
  i: Integer;
begin
  minAbsElement := abs(arr[1]);
  minAbsElementIndex := 1;

  for i := 2 to N do
  begin
    if abs(arr[i]) < minAbsElement then
    begin
      minAbsElement := abs(arr[i]);
      minAbsElementIndex := i;
    end;
  end;
end;

procedure FindMaxNegativeElement(var arr: TArray; var maxNegativeElement: Integer; 

var maxNegativeElementIndex: Integer);
var
  i: Integer;
begin
  maxNegativeElement := -1;
  maxNegativeElementIndex := -1;

  for i := 1 to N do
  begin
    if (arr[i] < 0) and ((maxNegativeElement = -1) or (arr[i] > maxNegativeElement)) then
    begin
      maxNegativeElement := arr[i];
      maxNegativeElementIndex := i;
    end;
  end;
end;

procedure PrintArray(arr: TArray);
var
  i: Integer;
begin
  for i := 1 to N do
    Write(arr[i], ' ');
  Writeln;
end;

var
  maxElement, minAbsElement, maxNegativeElement: Integer;
  maxElementIndex, minAbsElementIndex, maxNegativeElementIndex: Integer;

begin
  // заполнение массива случайными числами

  Randomize;
  for var i := 1 to N do
    A[i] := Random(21) - 10;

  // вывод исходного массива

  Writeln('Исходный массив: ');
  PrintArray(A);

  // поиск и вывод максимального элемента

  FindMaxElement(A, maxElement, maxElementIndex);
  Writeln('Максимальный элемент: ', maxElement, ' (индекс: ', maxElementIndex, ')');

  // поиск и вывод минимального по модулю элемента

  FindMinAbsElement(A, minAbsElement, minAbsElementIndex);
  Writeln('Минимальный по модулю элемент: ', minAbsElement, ' (индекс: ', minAbsElementIndex, ')');

  // поиск и вывод максимального отрицательного элемента

  FindMaxNegativeElement(A, maxNegativeElement, maxNegativeElementIndex);

  if maxNegativeElementIndex <> -1 then
    Writeln('Максимальный отрицательный элемент: ', maxNegativeElement, ' (индекс: ', maxNegativeElementIndex, ')')
  else
    Writeln('В массиве нет отрицательных элементов');

end.