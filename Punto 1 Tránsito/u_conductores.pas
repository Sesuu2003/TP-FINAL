
Unit u_conductores;

Interface

Uses crt, utilidades;

Const 
  N = 20;

Type 
  t_dato = Record
    DNI: string[8];
    ApyNom: string[50];
    Nacimiento: string[10];
    Telefono: string[10];
    //Ej 3446366096
    Email: string[50];
    Scoring: 0..20;
    Habilitado: boolean;
    Fecha_habilitacion: string[10];
    cant_reincidencias: 0..N;
  End;
  t_archivo = file Of t_dato;

Var 
  archivo: t_archivo;

Implementation

//ABMC
Procedure alta();
//agrega un conductor
Begin
  reset(archivo)
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
