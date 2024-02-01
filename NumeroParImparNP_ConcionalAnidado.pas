Program NumeroParImparNP_ConcionalAnidado;
 {
   EJemplo de un condional Anidado
   evalua si un numero es par o impar N/P
 }
var
 	NumeroAEvaluar:integer;
begin
 	write('Indica El numero a evaluar');
 	Read(NumeroAEvaluar);
 	writeln('');
 	If Not(NumeroAEvaluar = 0) then
    begin 
      If NumeroAEvaluar mod 2 = 0 then
 	  	 Writeln(' El numero ',NumeroAEvaluar,' es par')
      else
        begin
          If NumeroAEvaluar< 0 then 
            Writeln(' El numero ',NumeroAEvaluar,' es impar Negativo')
          else
            Writeln(' El numero ',NumeroAEvaluar,' es impar Positivo');
        end;
    end;
  readln();
End.
