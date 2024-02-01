Program Lab1Ej2_2022;
 {
  - Dado un entero positivo N con 3 dígitos, empleando DIV y/o MOD intercambia el
  primer valor con el último genera un nuevo número y muéstralo al usuario. Realiza las
  operaciones matemáticas que sean necesarias.
 }
var
 N,NuevoNumero:integer;
 Valido:boolean;

Begin
 writeln('');
 //Leemos y validamos el numero
 Repeat
  Write('N: ');
  Readln(N);
  Valido:= ( (N>99) and (N <1000) );
  If Not Valido then
     writeln('El numero no es valido');
 until valido;
 //Creamos el nuevo numero y lo imprimimos
 Nuevonumero:= (N mod 10)*100+ ((N div 100))+((N div 10) mod 10)*10;
 Writeln(' dado N:',N,' obtenemos ',Nuevonumero);
 Readln;
End.
