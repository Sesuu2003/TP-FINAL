Unit u_infracciones

Uses u_utilidades, crt;

Interface

Type 
  t_dato = Record
    CodigoIfraccion:cardinal; //Clave primaria de la infraccion, sino lo hacemos con esto, no tengo idea.
    DNI: string[8];
    Fecha_infraccion: string[10];
    tipo;
    puntos: 0..20;
  End;
  t_archivo = file Of t_dato;

Implementation
procedure CargaInfra(var dato:t_dato);
begin
  //Datos de la infraccion, cargar el t_dato
  writeln('Ingrese el DNI: ');
  readln(t_dato.dni);
  writeln('Ingrese la fecha de la infraccion: ');
  readln(t_dato.Fecha_infraccion);
  writeln('tipo infracción: ');
  readln(t_dato.tipo);
  writeln('Puntaje que se descuenta: ');
  readln(t_dato.puntos);
end;
procedure GuardarInfra(var Arch:t_archivo; var pos:cardinal; dato:t_dato);
begin
  //Escribir el archivo de infracciones
  seek(Arch, pos);
  write(Arch, dato);
end;
Procedure alta(var Arch:t_archivo);
VAR
  dato:t_dato;
  pos:cardinal;
Begin
  CargaInfra(dato);
  pos:=filesize(InfraMaster);
  GuardarInfra(InfraMaster, pos, dato)
End;
Procedure modificar(var Arch:t_archivo; var pos:cardinal;dato:t_dato);
Begin

End;
Procedure consultar(var Arch:t_archivo; );
Begin

End;
