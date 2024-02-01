Program NumeroPar_ConcionalSimple;
 {
   EJemplo de un condional simple
   evalua si un numero es par
 }
 var
 	NumeroAEvaluar:integer;
begin
 	write('Indica El numero a evaluar');
 	Read(NumeroAEvaluar);
 	writeln('');
 	If NumeroAEvaluar mod 2 = 0 then
 		Writeln(' El numero ',NumeroAEvaluar,' es par');
 	readln();
End.
