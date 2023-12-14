
Unit u_utilidades;

Interface

Uses SysUtils, crt;

Procedure iniciar_archivo(Var archivo: File; ruta: String);

Implementation
//Archivos
Procedure iniciar_archivo(Var archivo: File; ruta: String);
//abrir archivo si existe, crear si no existe.
Begin
  If FileExists(ruta) Then
    reset(archivo)
  Else
    Begin
      rewrite(archivo)
    End;
End;

Procedure leer_dato(Var archivo: File; pos:cardinal; Var dato:t_dato);
Begin
  seek(archivo, pos);
  read(archivo, pos);
End;
Procedure guardar_dato(Var archivo: File, pos:cardinal, Var dato:t_dato);
Begin
  seek(archivo, pos);
  write(archvi, pos);
End;
Procedure revisar_existencia(Var archivo: File, dni:String[10]);
//búsqueda abinaria
Begin

End;
