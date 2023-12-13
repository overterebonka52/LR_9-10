program b2z4;
const 
  m = 8; //размер массива
  n = 8;

var 
  a: array[1..m, 1..n] of integer; 
  b: array[1..m] of integer;
  i, z, s, avg: integer;

begin
  for i := 1 to m do
    for z := 1 to n do 
      a[i, z] := random(-10, 10); // рандом массив

  writeln('Двумерный массив:');
  
  for i := 1 to m do // двумерный массив
  begin
    for z := 1 to n do
      write(a[i, z]:4);
    writeln;
  end;

  writeln('Одномерный массив:');

  for i := 1 to m do // одномерный массив
  begin
    b[i] := a[i, 1]; // первый элемент строки как минимальный
    for z := 2 to n do
    begin
      if a[i, z] < b[i] then
        b[i] := a[i, z]; // если a < b, то присваиваем
    end;
    write(b[i]:4);
  end;

  s := 0;

  for i := 1 to m do // сумма элементов одномерного массива
    s := s + b[i];

  avg := s div m; // среднее арифметическое

  writeln;

  if avg in b then // проверка
    writeln('Одномерный массив содержит своё среднее арифметическое: ', avg)
  else
    writeln('Одномерный массив НЕ содержит своё среднее арифметическое: ', avg);
end.
