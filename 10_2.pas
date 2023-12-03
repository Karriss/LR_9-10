var
TwoDimensionalArray: array[1..8, 1..6] of Integer;
OneDimensionalArray: array[1..8] of Integer;
i, j: Integer;
allPositive: Boolean;
begin
randomize;

// Заполняем двумерный массив случайными числами от -10 до 10
for i := 1 to 8 do
begin
for j := 1 to 6 do
begin
TwoDimensionalArray[i, j] := random(21) - 10;
write(TwoDimensionalArray[i, j]:4);
end;
writeln;
end;

writeln;

// Формируем одномерный массив
for i := 1 to 8 do
begin
allPositive := true;
for j := 1 to 6 do
begin
if TwoDimensionalArray[i, j] < 0 then
begin
allPositive := false;
break;
end;
end;

if allPositive then
OneDimensionalArray[i] := 1
else
OneDimensionalArray[i] := -1;

write(OneDimensionalArray[i]:3);
end;

readln;
end.