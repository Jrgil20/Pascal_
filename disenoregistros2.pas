Program Untitled;
{diseño de registros}
type
   marcas=(Toyota,Mazda,Chrysler,Volkswagen);
   colores=(rojo,azul,verde,plateado,blanco,negro);
   estado=(en_espera,entregado,devuelto);


   Datos_Del_cliente=record
    nombre:string;
    cedula:integer;
    fechade_expiracion_de_la_licencia:integer;
    edad:integer;
   end;

   Datos_Del_vehiculo=record
     Marca_del_vechiculo:marcas;
     Color_del_vechiculo:colores;
     fecha_del_vehiculo:integer;
     fecha_del_mantenimiento:integer;
     monto_del_mantenimiento:integer;
   end;

   Datos_Del_vehiculo_en_Contrato=record
    vehiculo:Datos_Del_vehiculo;
    monto_a_cobrar_por_vehiculo:integer;
    monto_de_penalizacion_por_demora:integer;
   end;

   vehiculos_en_contrato= array [1..10] of Datos_Del_vehiculo_en_Contrato;

   Contrato=record
    numero_de_contrato:integer;
    cliente:Datos_Del_cliente;
    fecha_de_registro:integer;
	estatus:estado;
    vehiculos_del_contrato:vehiculos_en_contrato;
   end;
   //promedio 30 maximo 35 35x12_420
   Matriz= array [2008..2010,1..420] of Contrato;

var
 BaseDeDatos:matriz;

Begin
 writeln('');

 Readln;
End.
