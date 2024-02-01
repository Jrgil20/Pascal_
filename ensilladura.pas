program ensilla;
{Se dice que una matriz tiene un punto de silla si alguna posición
 de la matriz es el menor valor de su fila y a la vez el mayor de su columna.
 Escribir un programa que tenga como entrada una matriz de números enteros
  y calcule la posición de un punto de silla (si es que existe).}
const
  lim= 50;
type
  matriz = array[1..lim,1..lim] of integer;
var
   m:matriz;
   n,silla:integer;

procedure llenarmat(var m:matriz;n:integer);
var
   i,j:integer;
begin
   for i:=1 to n do
     begin
       for j:=1 to n do
          begin
             writeln('Indica dato posicion [',i,' ',j,']');
             readln(m[i,j]);
          end;
     end;
end;

procedure imprimirmat(m:matriz;n:integer);
var
   i,j:integer;
begin
   writeln('contenido de la matriz');
   for i:=1 to n do
     begin
       for j:=1 to n do
           write(m[i,j],' ');
       writeln;
     end;
end;

function puntosilla(m:matriz;n:integer): integer;
 var
 i,j,k,punto, menor,mayor,col:integer;
 detener:boolean;
begin
   i:=1; col:=1; punto:=-1; detener:=true;
   while (i<=n) and (detener = true) do
     begin
        mayor:=0; menor:=9999999;
        j:=1;
        while (j<= n) and (detener = true) do
          begin
              if m[i,j]< menor then
                 begin
                    menor := m[i,j];
                    col:=j;
                 end;
               j:=j+1;
          end;
        k:=1;
        while (k <= n) and (detener = true) do
          begin
              if m[k,col] > mayor then
                  mayor := m[k,col];
              k:=k+1;
          end;
        if mayor = menor then
           begin
              punto:=mayor;
              detener:=false;
           end;
        i:=i+1;
     end;
    puntosilla := punto;
end;

begin
   writeln('Indica cantidad de filas y columnas');
   readln(n);
   llenarmat(m,n);
   imprimirmat(m,n);
   silla:=puntosilla(m,n);
   if silla <> -1 then
      writeln('El punto de silla es: ',silla)
   else
      writeln('No existe un punto de silla ');
   readln;

end.
