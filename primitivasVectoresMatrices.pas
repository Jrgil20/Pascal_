program primitivas;
const
  limite = 200;
  filas = 100;
  columnas = 150;

type 
  matriz = array[1..filas,1..columnas] of integer;
  vector = array[1..limite] of integer; 

var
  m:matriz;
  v:vector;
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


procedure llenar_vector_manual(var v:vector; n:integer);
var
  i:integer;
begin
  for i:=1 to n do
     begin
        writeln('indique valor posicion: ',i);
        readln(v[i]);
     end;  
end;

procedure llenar_vector_random(var v:vector; n:integer);
var
  i:integer;
begin
  randomize;
  for i:=1 to n do
     begin
        v[i]:=random(100) + 1;
     end;  
end;

procedure imprimir_vector(v:vector; n:integer);
var
  i:integer;
begin
  writeln;
  writeln('Contenido del vector: ');
  for i:=1 to n do
     begin
        write(v[i],'  ');
     end;  
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

procedure llenar_matriz_random(var m:matriz; fil,col:integer);
var
  i,j:integer;
begin
  randomize;
  for i:=1 to fil do
     begin
       for j:=1 to col do
         begin
            m[i,j]:=random(100)+1;
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
            write(m[i,j],'  ');
         end; 
       writeln;  
     end;  
end;

begin
  n:=validarDimensiones(n,limite,'casillas');
  llenar_vector_random(v,n);
  imprimir_vector(v,n);
  fil:=validarDimensiones(fil,filas,'filas');
  col:=validarDimensiones(col,columnas,'columnas');
  llenar_matriz_random(m,fil,col);
  imprimir_matriz(m,fil,col);
  readln;
end.

