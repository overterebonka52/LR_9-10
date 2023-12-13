program b1z4;

const
  n = 10;

var
  a, b: array of integer; //Глобальные
  i, sum1, sum2: integer; //Глобальные

procedure pro10(i, sum1, sum2: integer; var a, b: array of integer); //Формальные
const                //параметры значения, параметры переменные
  n = 10; 
var
  aa, bb: array [1..n] of integer; //Локальные

begin
  writeln('Изначальные массивы:'); // вывод изначальных массивов
  for i := 1 to n do
  begin
    aa[i] := random(-20, 20); //Фактические
    bb[i] := random(-20, 20); //Фактические
  end;
  writeln(aa);
  writeln(bb);
  writeln;

  for i := 1 to n do  // вычисление сумм положительных элементов
  begin
    if aa[i] > 0 then
      sum1 := sum1 + aa[i];
    if bb[i] > 0 then
      sum2 := sum2 + bb[i];
  end;

  if sum1 < sum2 then // умножение на 10
    for i := 1 to n do
      aa[i] := aa[i] * 10
  else
    for i := 1 to n do
      bb[i] := bb[i] * 10;

  writeln('Изменённые массивы:');  // вывод измененных массивов
  writeln(aa);
  writeln(bb);
end;

begin
  pro10(i, sum1, sum2, a, b);
end.