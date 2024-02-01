program magico;
const
 N=20;
type
  matriz=array[1..N,1..N] of integer;
var
  cuadrado:matriz;
  filas,columnas,max:byte;
  noes:boolean;

procedure llena_matriz(var cuadrado:matriz;max:byte);
var
  i,j: byte;
begin
  for i:=1 to max do
    begin
      for j:=1 to max do
         begin
           writeln('Indique valor posicion [',i,' ',j,']');
           readln(cuadrado[i,j]);
         end;
    end;
end;

function sumafil(cuadrado:matriz;max,filas:byte):byte;
var
   j,totfil:byte;
begin
   totfil:=0;
   for j:=1 to max do
       totfil:=totfil + cuadrado[filas,j];
   sumafil:=totfil;
end;

function sumacol(cuadrado:matriz;max,colum:byte):byte;
var
   i,totcol:byte;
begin
   totcol:=0;
   for i:=1 to max do
       totcol:=totcol + cuadrado[i,colum];
   sumacol:=totcol;
end;

function sumadiag(cuadrado:matriz;max:byte):byte;
var
   i,j,totdiag:byte;
begin
   totdiag:=0;
   for i:=1 to max do
      begin
         for j:=1 to max do
            begin
                if i=j then
                     totdiag:=totdiag + cuadrado[i,j];
            end;
      end;
   sumadiag:=totdiag;
end;

function sumaantidiag(cuadrado:matriz;max:byte):byte;
var
   i,totanti:byte;
begin
   totanti:=0;
   for i:=1 to max do
       totanti:=totanti + cuadrado[i,max-i+1];
   sumaantidiag:=totanti;
end;

begin
  writeln('indique orden de la matrix(max=20)');
  readln(max);
  llena_matriz(cuadrado,max);
  noes:=true;filas:=1;
  while (filas<=max) and (noes=true) do
   begin
    if sumafil(cuadrado,max,filas) <> ((max**3+max) div 2){formula que permite saber si es magico o no} then
       noes:=false;
    filas:=filas+1;
   end;
  columnas:=1;
  while (columnas<=max) and (noes=true) do
   begin
    if sumacol(cuadrado,max,columnas) <> ((max**3+max) div 2) then
       noes:=false;
    columnas:=columnas+1;
   end;
   if noes then
       if sumadiag(cuadrado,max) <> ((max**3+max) div 2) then
             noes:=false;
   if noes then
       if sumaantidiag(cuadrado,max) <> ((max**3+max) div 2) then
             noes:=false;
   if noes then
     begin
        writeln('La matriz dada de orden ', max,' es un cuadrado magico');
        writeln('La constante magica es ', (max**3+max) div 2);
     end
   else
        writeln('La matriz dada de orden ', max,' No es un cuadrado magico');
   readln;
end.
