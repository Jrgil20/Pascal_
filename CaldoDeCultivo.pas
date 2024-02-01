program caldo_de_cultivo;
 uses
  crt;

var
  matriz: array [1..10, 1..10] of integer;
  dato, c, y: integer;

begin
  clrscr;
  c := 1;
  randomize;
  repeat
    for y := 1 to 10 do 
      begin
        dato := Random(2);
        matriz[y, c] := dato;
      end;
    c := c + 1;
  until c > 10;
  for c := 1 to 10 do 
    begin
      for y := 1 to 10 do 
        begin
          write('|');
          Textbackground (matriz[y, c] ); 
          write(' ');        
        end;
      writeln('|');
    end;
  readkey;
end.
