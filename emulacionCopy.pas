program emulacionCopy;
uses crt;

var 
  S1, S2: String;
  i, p, n, fin: Integer;
begin
  write('S1 '); ReadLn(S1);
  write('Posicion'); ReadLn(p);
  write('cantidad '); ReadLn(n);
  
  //Usamos copy para verificar
  S2:=Copy(S1,p,n);
  Writeln('S2 con Función Copy: ',S2);
  
  //Reiniciamos S2
  S2:='';
  Writeln(S2);
  
  //Emulamos el Copy
  //copiando desde la posición p de S1, n characters
  if (p<=Length(S1)) then
   begin
    fin:=p+n-1;
    if  (fin> Length(S1)) then
      fin:= Length(S1);
    for i:=p to fin do
      S2:=S2+S1[i];
   end;
  writeln('S2 emulando función copy: ',S2);
  
  readln();
end.
