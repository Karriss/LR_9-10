program zad_10;

var
  i, g, j, f: integer;
  a: array[1..8, 1..8] of integer;
  b: array[1..8] of integer;
procedure vova;
begin
  if f >= 2 then write(-1:5) else write(1:5);
end;
begin
  for i := 1 to 8 do
    for j := 1 to 8 do
      a[i, j] := random(11);
  for i := 1 to 8 do
  begin
    b[i] := a[i, 1];
    for j := 1 to 8 do
      if a[i, j] > b[i] then b[i] := a[i, j];
  end;
  for i := 1 to 8 do
  begin
    for j := 1 to 8 do
    begin
      if b[i] = a[i, j] then f := f + 1;
    end;
    vova;
    f := 0;
  end;
  writeln();
  for i := 1 to 8 do
  begin;
    writeln();
    for j := 1 to 8 do
      write(a[i, j]:5);
  end;
end.