program b1z5;
var a:array of integer;
c:array of integer;
cnta,cntc,i,maxa,maxc,n,ia,ic:integer;
cna, cnc : boolean;
begin
  write('Введите длину массивов: ');
  readln(n);
  setlength(a,n); 
  setlength(c,n);
  a := arrrandom(n,-50,50); // формирование рандомных массивов
  c := arrrandom(n,-50,50);
  writeln(a);
  writeln(c);
  maxa:=a[0];
  maxc:=c[0];
  for i:=0 to n-1 do begin
    if (a[i] mod 5 = 0) and (cna = False) then //проверка на первый элемент, кратный пяти
      begin cnta:=i; cna := True; 
      end;
    if (c[i] mod 5 = 0) and (cnc = False) then 
      begin cntc:=i; cnc := True; 
      end;
    if maxa<a[i] then 
      begin maxa:=a[i]; ia := i; 
      end;
    if maxc<c[i] then 
      begin maxc:=c[i]; ic := i; 
      end;
  end;
  if cnta < cntc then begin
    a[ia] := 0;
    for i := 0 to n-1 do begin
      c[i] := c[i]*2; // умножение на 2
    end;
  end
  else begin
    c[ic] := 0;
    for i := 0 to n-1 do begin
      a[i] := a[i]*2; //умножение на 2
    end;
  end;
  writeln('Массив 1 после изменений: ', a);
  writeln('Массив 2 после изменений: ', c);
end.