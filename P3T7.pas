{
7. Сформировать массив из 20 чисел. Удалить последний положительный 
   элемент. Удалить наибольший элемент массива. 7 -8 3 -5 -7 -5 -12 14 0 -9 -6 -13 -8 8 7 18 19 4 -1 -15
}

var
  A: array of integer;
  i, imax, nmax: integer;
begin
  SetLength(A, 20);
//  Write('Введите элементы массива: ');
  for i := 0 to 19 do
  begin
    A[i] := Random(-20, 20); 
   // Read(A[i]);
  end;
  Writeln(A, ' – создан массив из 20 чисел.');
  
  
  i := -1;
  repeat
    i += 1;
  until A[19 - i] > 0;
  A[19 - i] := 0;
  for i := i downto 1 do
  begin
    A[19 - i] := A[19 - i + 1]  
  end;
  SetLength(A, 19);
  Writeln(A, ' – удалён последний положительный элемент.');
  
  
  nmax := 0;
  for i := 0 to 18 do
  begin
    if A[i] > nmax then 
    begin
      nmax := A[i];
      imax := i;
    end;
  end;
  A[imax] := 0;
  for i := imax to 17 do
  begin
    A[i] := A[i + 1] 
  end;
  SetLength(A, 18);
  Writeln(A, ' – удалён наибольший элемент массива.');
  
end.