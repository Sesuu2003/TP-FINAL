Unit u_conductores;

Interface

Uses crt, utilidades;

Const 
  N = 20;
  rutaCDNI = 'e:\ArchivoConductoresDNI.DAT';
  rutaCApynom = 'e:\ArchivoConductoresApynom.DAT';
  rutaCMaster = 'e:\ArchivoConductoresMaster.DAT';
Type 
  t_dato = Record
    DNI: string[8];
    ApyNom: string[50];
    Nacimiento: string[10];
    Telefono: string[10];
    //Ej 3446366096 
    Email: string[50];
    Scoring: smallint;//Pueden ser negativos --> por eso no es de 0..20;
    Habilitado: boolean;
    Fecha_habilitacion: string[10];
    cant_reincidencias: 0..N;
  End;
  t_archivo = file Of t_dato;
Var 
  archivo: t_archivo;
Implementation
Procedure CargaCond(Var dato:t_dato);
Begin
  //Datos del conductor, cargar el t_dato
  writeln('Ingrese el DNI: ');
  readln(dato.dni);
  writeln('Ingrese apellido y nombre: ');
  readln(dato.ApyNom);
  writeln('Ingrese la fecha de nacimiento: ');
  readln(dato.Nacimiento);
  writeln('Ingrese el teléfono: ');
  readln(dato.Telefono);
  writeln('Ingrese el email: ');
  readln(dato.Email);
  writeln('Ingrese el scoring: ');
  readln(dato.Scoring);
  writeln('Ingrese la fecha de habilitación: ');
  readln(dato.Fecha_habilitacion);
  writeln('Ingrese cantidad de reincidencias: ');
  readln(dato.cant_reincidencias);
End;
Procedure GuardarCond(Var Arch:t_archivo; Var pos:cardinal; dato:t_dato);
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
  CargaInfra(dato);
  pos := filesize(InfraMaster);
  GuardarInfra(InfraMaster, pos, dato)
End;

Procedure baja();
Begin

End;
Procedure modificar();
Begin

End;
Procedure consultar();
Begin

End;
