{��� ������� ����⢥��� ���ᨢ. ����������� ४��ᨢ�� �㭪��, ��室����
������ ��ࢮ�� �� ��� ���������� ����⮢ ���ᨢ�. ��࠭�祭��: 横�� ��
�ᯮ�짮����.
����: ����ᮢ� �.�., ��. 39-11
���: 28.02.2013}
Program Rekursia;
Uses crt;
Const n=6;
Type Vect = array[1..n] of real;
Var A: Vect;

{���������� � �뢮� ���ᨢ� �� �࠭}
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

{�����ᨢ��� �㭪�� ����� ��室�� ������ �������쭮�� �����}
Function Rekurs(n: integer): integer;
{n-������ ���ᨢ� �� n �� 1}
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
  Writeln('������ �������쭮�� ���祭��: ',Rekurs(n));
  ReadKey;
End.
