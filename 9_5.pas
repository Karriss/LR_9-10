program zad_5;
var
 //фактические
 i, g, v, f, n, z, c, l, m, j: integer;
  a: array[1..20] of integer;
  b: array[1..20] of integer;
procedure ognev //(формальные)
var hghghghghghghghghghghghgh;
begin
 //Локальные
 if a[i] < z then z:= a[i];
       if a[i] = z then c:= i;
      if b[i] < m then m:= b[i];
      if b[i] = m then l:= i;
end;
//Глобальные
begin
  for i := 1 to 20 do
  begin
    a[i] := random(20);
    b[i] := random(20);
  end;
  writeln(a);
  writeln(b);
  writeln();
  for i := 1 to 20 do
  begin
    if a[i] mod 5 = 0 then g := i;
    if a[i] mod 5 = 0 then break;
    if b[i] mod 5 = 0 then f := i;
    if b[i] mod 5 = 0 then break;
  end;
  z:=1000;
   m:= 1000;
  for i := 1 to 20 do begin
      ognev;
      break;
      end;
  if g > f then
    for i := 1 to 20 do
    begin
      if a[i] > v then n := i;
      if a[i] > v then v := a[i];
    end
  else
    for i := 1 to 20 do
    begin
      if b[i] > v then n := i;
      if b[i] > v then v := b[i];
    end;
  if g > f then a[n] := 0 else b[n] := 0;
  if g > f then
    for i := l+1 to 20 do
    begin
      b[i]:=b[i]*2;
    end
  else
    for i := c+1 to 20 do
    begin
     a[i]:=a[i]*2;
    end;
  writeln(a);
  writeln(b);
end.