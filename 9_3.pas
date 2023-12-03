program FindElement;

const
  N = 5; // размер массива

type
  TArr = array[1..N] of integer;

// Функция для нахождения номера первого положительного элемента
function FindFirstPositiveElement(arr: TArr): integer;
var
  i: integer;
begin
  for i := 1 to N do
  begin
    if arr[i] > 0 then
    begin
      Result := i;
      Exit; // выход из функции при нахождении первого положительного элемента
    end;
  end;
  Result := 0; // если положительных элементов нет
end;

// Функция для нахождения номера последнего отрицательного элемента
function FindLastNegativeElement(arr: TArr): integer;
var
  i: integer;
begin
  for i := N downto 1 do
  begin
    if arr[i] < 0 then
    begin
      Result := i;
      Exit; // выход из функции при нахождении последнего отрицательного элемента
    end;
  end;
  Result := 0; // если отрицательных элементов нет
end;

var
  arr: TArr;
  i: integer;

begin
  // Пример заполнения массива
  for i := 1 to N do
  begin
    Write('Введите элемент ', i, ': ');
    ReadLn(arr[i]);
  end;

  WriteLn('Номер первого положительного элемента: ', FindFirstPositiveElement(arr));
  WriteLn('Номер последнего отрицательного элемента: ', FindLastNegativeElement(arr));
end.
