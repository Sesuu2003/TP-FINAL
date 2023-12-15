
Program TPscoring;

Uses u_conductores, u_infracciones, u_utilidades, crt;

Const 
  rutaCond = 'C:\Games\Conductores.dat';
  rutaInf = 'C:\Games\Infracciones.dat';


Var 
  archCond: u_conductores.t_archivo;
  archInf: u_infracciones.t_archivo;
  op: 0..5;
  //! CRUD de conductores
  //! CRUD de infracciones
  //! Actualización de scoring por infracción
  //! Listado por Apellido y Nombre
  //! Listado por fecha de todas las infracciones en un período determinado
  //! Fecha de todas las infracciones de un conductor en un período determinado
  //! Listado de los infractores a los cuales su scoring llegó a 0
  //!Estadísticas:
{
  - Cantidad de infracciones entre dos fechas
  - Porcentaje de conductores con reincidencia
  - Porcentaje de conductores con scoring 0
  - Total (agregar esta opción según su criterio y que sea de utilidad para la municipalidad)
  - Rango etario con más infracciones (menores de 30, entre 31 y
    50, mayores a 50)
}

Procedure menu();
Begin
  Repeat
    writeln('Bienvenido al  Software de scoring');
    writeln('Elija una operación:');
    writeln('1) Administrar conductores');
    writeln('2) Administrar infracciones');
    writeln('0) Salir del programa');
    readln(op);
    Case op Of 
      1: menu_conductores;
      2: menu_infracciones;
    End;
  Until (res=0);
End;
Procedure menu_conductores();
Begin
  Repeat
    writeln('Administración de Conductores');
    writeln('Elija una operación:');
    writeln('1) Registrar conductor');
    writeln('2) Modificar conductor');
    writeln('3) Buscar conductor');
    writeln('4) Eliminar conductor');
    writeln('0) Volver al menu principal');

  Until (res=0);
End;
Procedure menu_infracciones();
Repeat
  writeln('Administración de Infracciones');
  writeln('Elija una operación:');
  writeln('1) Registrar infracción');
  writeln('2) Modificar infracción');
  writeln('3) Buscar infracción');
  writeln('4) Eliminar infracción');
  writeln('0) Volver al menu principal');
Until (res=0);
End;
Begin
  Assign(archCond, rutaCond);
  Assign(archInf, rutaInf);
  iniciar_archivo(archCond, rutaCond);
  iniciar_archivo(archInf, rutaInf);
  writeln('Holi');
End.
