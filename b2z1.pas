const m = 6; n = 8;
var a: array[1..m, 1..n] of integer; //создание матриц
    b: array[1..m] of integer;
    i,z:integer;

begin
  for i:=1 to m do
  for z:=1 to n do a[i,z] := random(-10,10); // формирование рандом матриц

  writeln('Двумерный массив:');
  for i:=1 to m do
  begin
    for z:=1 to n do
      write(a[i,z]:4); //вывод матрицы
    writeln;
  end;
  writeln('Одномерный массив:');
  for i:=1 to m do
  begin
    b[i]:=0;
    for z:=1 to n do
    begin
     if abs(a[i,1])>4 then // если разность z и i больше 4
     begin
       b[i]:=a[i,1]; // обновляем массив б
       break;
     end;
    end;
    write(b[i]:4); // вывод с модулем 4
  end;
end.