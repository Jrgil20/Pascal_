program matrizsubeybaja;
const
 maxfilas = 20;
 maxcolum = 20;
type
 matriz = array[1..maxfilas, 1..maxcolum] of integer;
var
 A : matriz; fila,col : integer;

procedure llenar (var A:matriz; f,c:integer);
 var
  i, j : integer;
 begin
   randomize;
   for i := 1 to f do
     for j := 1 to c do
        A[i,j] := random (9);
 end;

procedure escribir (A:matriz; f,c:integer);
 var
  i, j : integer;
 begin
   for i := 1 to f do
    begin
     for j := 1 to c do
        write (A[i,j], '| ');
     writeln;
    end;
 end;

procedure  subeybaja(A:matriz; f,c:integer);
 var
    i,columna,bajaosube: integer; {1=baja,0=sube}
begin
    bajaosube :=1;
    writeln('Recorrido sube y baja: ');
    for columna:=1 to c do
      begin
         if columna mod 2 <> 0 then
            begin
               if bajaosube = 1 then
                  begin
                      for i:=1 to f do
                         write(A[i,columna],' ');

                      if columna <> c then
                         write(A[i,columna+1],' ');

                      bajaosube:=0;
                  end
               else
                  begin
                      for i:=f downto 1 do
                         write(A[i,columna],' ');

                      if columna <> c then
                         write(A[i,columna+1],' ');

                      bajaosube:=1;
                  end;
            end;
     end;

end;

begin
  write ('INDICA CANTIDAD DE FILAS --->  ');  readln (fila);
  if (fila < 0) or (fila > maxfilas) then
    writeln ('NÚMERO DE FILAS INVÁLIDA')
  else
    begin
      write ('INDICA CANTIDAD DE COLUMNAS --->  ');  readln (col);
       if (col < 0) or (col > maxcolum) then
           writeln ('NÚMERO DE COLUMNAS INVÁLIDA')
       else
         begin
            llenar (A,fila,col);
            escribir (A,fila,col);
            subeybaja(A,fila,col);
         end;
    end;
  readln;
 end.
