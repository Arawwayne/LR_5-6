{
4. Заполнить массив А из 30 элементов случайными числами из диапазона
   [-99, 67]. Сформировать массив В, в который записать только четные 
   элементы массива А.
}

var
  A, B: array of integer;
  i, c: integer;
begin
  c := 1;
  SetLength(A, 30);
  for i := 0 to 29 do
  begin
    A[i] := Random(-99, 67);
    if A[i] mod 2 = 0 then
    begin
      SetLength(B, c);
      B[c - 1] := A[i];
      c += 1
    end;
  end;
  writeln(A);
  writeln(B)
end.