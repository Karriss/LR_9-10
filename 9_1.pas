const
  N = 5; // Длина массива

type
  TArray = array[1..N] of Integer;

function CalculateProduct(arr: TArray): Integer;
var
  i, product: Integer;
begin
  product := 1;
  for i := 1 to N do
    product := product * arr[i];
  CalculateProduct := product;
end;

function CalculateEvenProduct(arr: TArray): Integer;
var
  i, product: Integer;
begin
  product := 1;
  for i := 1 to N do
  begin
    if arr[i] mod 2 = 0 then // Проверяем, является ли элемент четным
      product := product * arr[i];
  end;
  CalculateEvenProduct := product;
end;

var
  numbers: TArray;
  i, product, evenProduct: Integer;

begin
  // Заполнение массива произвольными числами
  for i := 1 to N do
    numbers[i] := i;
  
  WriteLn('Исходный массив:');
  for i := 1 to N do
    Write(numbers[i], ' ');
  writeln;
  product := CalculateProduct(numbers);
  WriteLn('Произведение всех элементов массива: ', product);
  
  evenProduct := CalculateEvenProduct(numbers);
  WriteLn('Произведение четных элементов массива: ', evenProduct);
  
end.