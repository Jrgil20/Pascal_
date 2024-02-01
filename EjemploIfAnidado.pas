program ejemploIfanidado;
{
Un postulante a un empleo, realiza un test de capacitación donde se obtuvo la siguiente información: cantidad total de preguntas que se le realizaron y 
la cantidad de preguntas que contestó correctamente. Se pide desarrollar un programa que ingrese los dos datos e informe el nivel del mismo
según el porcentaje de respuestas correctas que ha obtenido sabiendo que:
	Nivel máximo:	Porcentaje>=90%.
	Nivel medio:	Porcentaje>=75% y <90%.
	Nivel regular:	Porcentaje>=50% y <75%.
	Fuera de nivel:	Porcentaje<50%.
}
var
   totalPreguntas,totalCorrectas: integer;
   porcentaje: real;
 
begin
   writeln('Indica total de preguntas realizadas: ');
   readln(totalPreguntas);
   writeln('Indica total de respuestas correctas: ');
   readln(totalCorrectas);
   porcentaje:= (totalCorrectas*100)/totalPreguntas;
   if porcentaje >= 90 then
       writeln('Nivel Máximo')
   else
      begin
          if porcentaje >= 75 then
             writeln('Nivel Medio')
          else
              begin
                  if porcentaje >= 50 then
                      writeln('Nivel Regular')
                  else
                      writeln('Fuera de Nivel');
              end;
      end;

end.
	