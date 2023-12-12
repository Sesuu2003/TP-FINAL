
Unit u_infracciones

Uses u_utilidades, crt;

Interface

Type 
  t_dato = Record
    DNI: string[8];
    Fecha_infraccion: string[10];
    tipo;
    puntos: 0..20;
  End;
  t_archivo = file Of t_dato;

Implementation
Procedure alta();
Begin

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
