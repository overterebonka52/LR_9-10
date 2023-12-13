﻿program b2z3;

const
  m = 8; //размеры массива
  n = 8;

var
  a: array[1..m, 1..n] of Integer; //генерация массива
  b: array[1..m] of Integer;
  i, j: Integer;

begin
  for i := 1 to m do
    for j := 1 to n do
      a[i, j] := Random(9); // рандом массив

  writeln('Исходный массив:');
  for i := 1 to m do
  begin
    for j := 1 to n do
      write(a[i, j]:4);
    writeln;
  end;

  for i := 1 to m do
  begin
    b[i] := -1; // если в строке нет соседниъ элементов с суммой 7

    for j := 1 to n - 1 do // проверка наличия
    begin
      if (a[i, j] + a[i, j + 1]) = 7 then
      begin
        b[i] := 1; // если есть такая пара то 1
        break; // конец цикла
      end;
    end;
  end;

  writeln('Одномерный массив:');
  for i := 1 to m do
    write(b[i]:4);
  
  readln;
end.