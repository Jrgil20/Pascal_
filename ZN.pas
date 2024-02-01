Program Operaciones_Zn;
{}
var
 N,m,i,aux,f:Integer; Existe,Hallar,factor:boolean;

Begin
 writeln('Introduzca el "N" para el Grupo Zn');
 repeat
  Readln(N);
  if N<2 then
    writeln('El numero debe ser mayor o igual a 2' );
 until N>1;
 writeln('Introduzca el numero cuyo inverso desee calcular');
 i:=0;
 repeat
  Readln(m);
  if   (m>n) or  (m<=0) then
    writeln('El numero debe ser menor que ',N,' en el grupo Z',N, ' y mayor o igual a 0' );
 until (m<n) and (m>=0);
 for aux:=1 to (n-1) do
  begin
   Hallar:= ( (aux*m) mod N )= 1;
   if Hallar then
    begin
     i:=aux;
     existe:=hallar;
    end
   else
    if (Aux mod M) =0 then
     begin
      if (not factor)and (aux>0) and (aux<M) then
       f:=aux;
      factor:= true;
     end;
  end;
 if existe then
  writeln (' El inverso es ',I)
 else
  write (' El inverso no existe ');
  if factor then
  writeln('por que ',m,' y ', N,'  tienen de fACTOR COMUN a ',f);
 Readln();
End.
