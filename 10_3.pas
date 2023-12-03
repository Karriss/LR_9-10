//3
const
N = 8;

type
TMatrix = array[1..N, 1..N] of integer;
TArray = array[1..N] of integer;

var
matrix: TMatrix;
resultArray: TArray;
i, j: integer;
pairFound: boolean;

begin
// Заполняем двумерный массив случайными числами от 1 до 10
randomize;
for i := 1 to N do
begin
for j := 1 to N do
begin
matrix[i, j] := random(10) + 1; // случайное число от 1 до 10
write(matrix[i, j], ' ');
end;
writeln;
end;

// Проверяем каждую строку на наличие пары соседних элементов, сумма которых равна 7
for i := 1 to N do
begin
pairFound := false;
for j := 1 to N - 1 do
begin
if (matrix[i, j] + matrix[i, j + 1] = 7) then
begin
resultArray[i] := 1; // если найдена пара, то элемент равен 1
pairFound := true;
break;
end;
end;
if not pairFound then
resultArray[i] := -1; // если пара не найдена, то элемент равен -1
end;

// Выводим одномерный массив
writeln('Результат:');
for i := 1 to N do
write(resultArray[i], ' ');
end.