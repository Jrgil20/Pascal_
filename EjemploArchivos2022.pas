program archivos3;
var
 ent,ent2,sal: text;
{palabra con mas repeticiones}
procedure PalabrasMasRepetida(var ent,ent2,sal:text);
var
  palabraA,palabraB:string;
  contador,maximo:integer;
begin
 reset(ent);
 reset(ent2);
 rewrite(sal);
 maximo:=0;
 while not(eof(ent)) do
   begin
      readln(ent,palabraA); contador:=0;
      reset(ent2);
      while not(eof(ent2)) do
        begin
            readln(ent2,palabraB);
            if palabraA = palabraB then
               contador:=contador+1;
        end;
      if (contador>=maximo)  then
        begin
          maximo:=contador;
          if maximo <> 0 then
             writeln(sal,palabraA);
         end;
   end;
 close(ent);close(ent2);close(sal);
end;


procedure verArchivoenPantalla(var c:text;nombre:string);
var
  palabraC:string;
begin
 writeln;
 writeln('archivo de  ',nombre);
 reset(c);
 if eof(c) then
   writeln('Archivo vacio')
 else
   begin
     while not(eof(c)) do
       begin
         readln(c,palabraC);
         writeln(palabraC);
       end;
   end;
 close(c);
end;

begin {programa principal}
 assign(ent,'c:\datos\entrada.txt');
 assign(ent2,'c:\datos\entrada2.txt');
 assign(sal,'c:\datos\salida.txt');
 verArchivoenPantalla(ent,'entrada1');
 verArchivoenPantalla(ent2,'entrada2');
 PalabrasMasRepetida(ent,ent2,sal);
 verArchivoenPantalla(sal,'salida');
 readln;
end.



