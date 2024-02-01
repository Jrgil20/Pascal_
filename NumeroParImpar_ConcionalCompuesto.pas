Program NumeroParImpar_ConcionalCompuesto;
 {
   EJemplo de un condional Compuesto
   evalua si un numero es par o impar
 }
var
 	NumeroAEvaluar:integer;
  Par:boolean;
begin
 	write('Indica El numero a evaluar');
 	Read(NumeroAEvaluar);
 	writeln('');
  Par:= NumeroAEvaluar mod 2 = 0;
   //Usamos un boolean opcional
 	If Par then
 		Writeln(Par,': El numero ',NumeroAEvaluar,' es par')
  else
    Writeln(Par,': El numero ',NumeroAEvaluar,' es impar');
 	readln();
End.
