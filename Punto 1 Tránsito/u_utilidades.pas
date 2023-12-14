Unit u_utilidades;

Uses crt;

//Archivos
Procedure iniciar_archivo(Var archivo:t_archivo);
//abrir archivo si existe, crear si no existe.
Begin
  If FileExists(archivo) Then
    reset(archivo)
  Else
    Begin
      rewrite(archivo)
    End;
End;
Procedure leer_dato(Var archivo:t_archivo, pos:cardinal, Var dato:t_dato);
Begin
  seek(archivo, pos);
  read(archivo, pos);
End;
Procedure guardar_dato(Var archivo:t_archivo, pos:cardinal, Var dato:t_dato);
Begin
  seek(archivo, pos);
  write(archvi, pos);
End;
Procedure revisar_existencia(Var archivo:t_archivo, dni:String[10]);
//búsqueda abinaria
Begin

End;
