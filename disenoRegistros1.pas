Program Untitled;
{diseño de registros}
type
   bases=(adnina,guanina,citcina,tinina);
   municipio=(libertador,sucre,baruta);

   acidodexiribonucleico= record
    Cromosomas: array [1..200] of byte;
    BAseNitrogeneada: array [1..10] of bases;
   end;

   Delito=record
    CodigoDeDelito:integer;
    FechaDeDeelito:integer;
    Multa:boolean;
   end;

   ExpedienteLegal= array [1..40] of Delito;

   persona=record
    nombre:string;
    cedula:integer;
    Sexo:string;
    telefono:integer;
    adn:acidodexiribonucleico;
    Expediente:ExpedienteLegal;
   end;

   Matriz= array [municipio,1..900] of persona;
var
 BaseDeDatos:matriz;

Begin
 writeln('');

 Readln;
End.
