program zad_9;
var
  i,g,j:integer;
  a:array[1..8,1..8] of integer;
  b:array[1..8] of integer;
  begin
    g:=100;
    for i:=1 to 8 do
      for j:=1 to 8 do
        a[i,j]:=10+random(34);
 for i:=1 to 8 do
      for j:=1 to 8 do
      begin
        if a[i,j]<g then g:=a[i,j];
        if j=8 then write(g:5);
        if j=8 then g:=100;
      end;
      writeln();
      write(a);
  end.