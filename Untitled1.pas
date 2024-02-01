Program Untitled;
{}
var

{
//  procedimiento Intercepta
 while not eof( ArchivoA) do  // Leemos B
    begin
        readLn( ArchivoA, lineaA );    //Leemos una linea de A
        while not eof( ArchivoB) do    //Leemos B
          begin
           readLn( ArchivoA, lineaB );    //Leemos una linea de B
           If LineaA = LineaB then
              Write(Archivo aux,LineaA);
           end;
    end;
}

{
procedimiento Diferencia
   while not eof( ArchivoAux) do  // Leemos todo aux
    begin
        readLn( ArchivoA, lineaAux );    //Leemos una linea de Aux
        while not eof( Archivoc) do    //Leemos todo c
          begin
             readLn( ArchivoC, lineac );    //Leemos una linea de c
             Diferente:= ( (diferente)and (LineaAux <> Lineac) )  // esto es un bolean
           end;
        // ya evaluado la linea Aux en todas las lineas de c
        if diferente then
            Write(Archivofinal,LineaA);

}

Begin
 writeln('=');
 writeln;

 Readln;
End.
