{Дан линейный вещественный массив. Реализовать рекурсивню функцию, находящую
индекс первого из всех минимальных элементов массива. Ограничение: циклы не
использовать.
Автор: Матросова М.А., гр. 39-11
Дата: 28.02.2013}
Program Rekursia;
Uses crt;
Const n=6;
Type Vect = array[1..n] of real;
Var A: Vect;

{Заполнение и вывод массива на экран}
Procedure Vector (var z: Vect);
Var i: integer;
Begin
  Randomize;
  for i:= 1 to n do
    z[i]:=random(10)-5;

  for i:=1 to n do
    write(z[i]:8:2);
  writeln;
End;

{Рекурсивная функция которая находит индекс минимального элемента}
Function Rekurs(n: integer): integer;
{n-индекс массива от n до 1}
Var min: integer;
Begin
  if n>1 then
    Begin
      min:=Rekurs(n-1);
      if a[n]>=a[min] then
        Rekurs:=min
      else Rekurs:=n
    End
  else Rekurs:=1;
End;

Begin
  ClrScr;
  Writeln('A');
  Vector(A);
  Writeln('Индекс минимального значения: ',Rekurs(n));
  ReadKey;
End.
