{
4. В одномерном массиве определить максимальную длину неубывающего 
   участка. Например, для 6 3 4 1 2 3 5 0 -2 -1 ответом будет 4.
}

var
  A: array of integer;
  i, c, cmax, n: integer;
begin
  cmax := 0;
  c := 0;
  Write('Введите длинну массива: ');
  Readln(n);
  SetLength(A, n);
  for i := 0 to n - 1 do
  begin
    Read(A[i]);
  end;

  for i := 0 to n - 2 do
  begin
    if A[i + 1] >= A[i] then c += 1
    else
    begin
      if c > cmax then
      begin
        cmax := c;
        c := 0;
      end
      else
      begin
        c := 0;
      end;
    end;
  end;  
  Write('Максимальная длинна неубывающего массива: ', cmax + 1);
end.