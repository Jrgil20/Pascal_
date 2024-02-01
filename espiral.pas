program espiral;
const
 n=9;
type
 matriz =array[0..n,0..n] of integer;
var
 a:matriz;
procedure Mostrar(a:matriz);
var
 i,j:integer;
begin
 i:=0;
 while i < N do
 begin
    j:= 0;
    while j < N do
      begin
        if a[i,j]<10 then
           write(a[i,j], '  ')
        else
           write(a[i,j], ' ');
        j:=j+1;
      end;
    writeln;
    i:=i+1;
 end;
end;

procedure Proceso(var a:matriz);
{NO SE OPTIMIZO ESTE PROGRAMA TE LO DEJO DE TAREA}
var
 i,j,k,vuelta:integer;
begin
vuelta:=1;  k:=0;
while vuelta < (N div 2 + 1) do
 begin
    i := vuelta-1;
    j := vuelta-1;
    while j < N-vuelta do
      begin
       k:=k+1;
       a[i,j] := k;
       j:=j+1;
      end;
    while i < N-vuelta do
      begin
        k:=k+1;
        a[i,j] := k;
        i:=i+1;
      end;
    while j >= vuelta do
      begin
        k:=k+1;
        a[i,j] := k;
        j:=j-1;
      end;
    while i >= vuelta do
      begin
        k:=k+1;
        a[i,j] := k;
        i:=i-1;
      end;
    vuelta:=vuelta+1;
 end;
 k:=k+1;
 if N mod 2 <> 0 then
    a[N div 2,N div 2] := k;
Mostrar(a);
end;

begin
 proceso(a);
 readln;
end.

