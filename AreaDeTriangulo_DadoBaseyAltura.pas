Program AreaDeTriangulo;
 {Dada base y altura hallar area del triangulo }
var
 a{Area},b{Base},h{Altura}:real;
Begin
 writeln('Dada base y altura hallar area del triangulo');
 writeln;
 write('Indique base ');
 Readln(b);
 write('Indique altura ');
 Readln(h);
 a:= b*h/2; //Formula del area de un triangulo
 writeln('El Area del triangulo: ',a:2:2); {:2:2 acorta el resultado}
 Readln;
End.