Program Laboratorio;
{a partir de una Matriz M (N*P) de enteros deberás
crear una nueva Matriz R (N*P) con el resultado de restar a cada elemento M[I,J] el promedio del
promedio de la Fila I y el promedio de la Columna J. Recuerda elaborar el Programa Principal
que invoque a los procedimientos y/o funciones desarrolladas y hacer el procedimiento de llenado
e impresión.}
const
  limite = 200;
  filas = 100;
  columnas = 150;

type 
  matriz = array[1..filas,1..columnas] of real;

var
  m,r:matriz;
  fil,col,n:integer;

function validarDimensiones(filcol,limi:integer; mensaje:string):integer;
begin
  writeln;
  repeat 
     writeln('Indica cantidad de ',mensaje,'--->');
     readln(filcol);
     if (filcol<2) or (filcol>limi) then
        writeln('Numero de ',mensaje,' invalidas');
  until  (filcol>=2) and (filcol<=limi);
  validarDimensiones:= filcol;

end;

procedure llenar_matriz_manual(var m:matriz; fil,col:integer);
var
  i,j:integer;
begin
  for i:=1 to fil do
     begin
       for j:=1 to col do
         begin
            writeln('indique valor posicion: [',i, ' ' ,j,']');
            readln(m[i,j]);
         end; 
     end;  
end;

function Promedio_F (m:matriz; fil,col:integer):real;
var
 i,j:integer;
 suma:real;
begin
    i:= fil;
    for j:=1 to col do
        begin
           suma:=suma+m[i,j];
        end;
    promedio_F:= suma/col;
end;

function Promedio_C (m:matriz; col,fil:integer):real;
var
 i,j:integer;
 suma:real;
begin
    i:= fil;
    for j:=1 to col do
        begin
           suma:=suma+m[i,j];
        end;
    promedio_C:= suma/fil;
end;

procedure llenar_matriz_R(var r,m:matriz; fil,col:integer);
var
  i,j:integer;
begin
  for i:=1 to fil do
     begin
       for j:=1 to col do
         begin
           r[i,j]:= m[i,j]- ( ( promedio_F(m,i,col)+ promedio_C(m,j,fil)) /2 );
         end; 
     end;  
end;

procedure imprimir_matriz(m:matriz; fil,col:integer);
var
  i,j:integer;
begin
  writeln;
  writeln('Contenido de la Matriz: ');
  for i:=1 to fil do
     begin
       for j:=1 to col do
         begin
            write(m[i,j]:2:2,'  ');
         end; 
       writeln;  
     end;  
end;

Begin
 writeln('=');

 fil:=validarDimensiones(fil,filas,'filas');
 col:=validarDimensiones(col,columnas,'columnas');

 llenar_matriz_manual(m,fil,col);
 writeln;
 llenar_matriz_R(r,m,fil,col);

 imprimir_matriz(m,fil,col);
 imprimir_matriz(r,fil,col);
 Readln;
End.
