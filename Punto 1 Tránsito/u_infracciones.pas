
Unit u_infracciones;

Interface

Uses u_utilidades, crt;


Type 
  t_dato = Record
    Codigo: cardinal;
    //Clave primaria de la infraccion, sino lo hacemos con esto, no tengo idea.
    DNI: string[8];
    Fecha_infraccion: string[10];
    tipo;
    puntos: 0..20;
    reclamo: bool;
  End;
  t_archivo = file Of t_dato;

Implementation
Procedure CargaInfra(Var dato:t_dato; Codigo:cardinal);
Begin
  //Datos de la infraccion, cargar el t_dato
  writeln('Ingrese el DNI: ');
  readln(dato.dni);
  writeln('Ingrese la fecha de la infraccion: ');//dia de carga timeget
  readln(dato.Fecha_infraccion);
  writeln('tipo infracción: ');
  readln(dato.tipo);
  writeln('Puntaje que se descuenta: ');
  readln(dato.puntos);
  dato.Codigo := Codigo;
End;
Procedure GuardarInfra(Var Arch:t_archivo; Var pos:cardinal; dato:t_dato);
Begin
  //Escribir el archivo de infracciones
  seek(Arch, pos);
  write(Arch, dato);
End;
Procedure alta(Var Arch:t_archivo);
Var 
  dato: t_dato;
  pos: cardinal;
Begin
  pos := filesize(InfraMaster);
  CargaInfra(dato, pos);
  GuardarInfra(InfraMaster, pos, dato)
End;
Procedure modificar(Var Arch:t_archivo; Var pos:cardinal;dato:t_dato);
Begin

End;
Procedure consultar(Var Arch:t_archivo; );
Begin

End;
