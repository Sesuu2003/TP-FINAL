unit unit_arbol_ConductoresDNI;
interface
uses crt;
type
    t_dato = Record
        Clave:string[50]; //Aun no se que es la clave, supongo que clave de ingreso;
        Posicion_relativa: cardinal;
    End;
    t_punt = ^t_nodo;
    t_nodo = record
        info:t_dato;
        sai,sad: t_punt;
    end;
procedure crear_arbol (var raiz:t_punt);
procedure agregar (var raiz:t_punt; x:t_dato);
function arbol_vacio (raiz:t_punt): boolean;
function arbol_lleno (raiz:t_punt): boolean;
procedure suprime (var raiz:t_punt;x:t_dato);
procedure inorden(var raiz:t_punt);
function preorden(raiz:t_punt;buscado:string[8]):t_punt;//devuelve Posicion

implementation
procedure crear_arbol (var raiz:t_punt);
begin
raiz:= nil;
end;
procedure agregar (var raiz:t_punt; x:t_dato);
begin
if raiz = nil then
begin
new (raiz);
raiz^.info:= x;
raiz^.sai:= nil;
raiz^.sad:= nil;
end
else if raiz^.info.DNI > x.DNI then agregar (raiz^.sai,x)
else agregar (raiz^.sad,x)
end;
function arbol_vacio (raiz:t_punt): boolean;
begin
arbol_vacio:= raiz = nil;
end;
function arbol_lleno (raiz:t_punt): boolean;
begin
arbol_lleno:= getheapstatus.totalfree < sizeof (t_nodo);
end;
function suprime_min (var raiz:t_punt): t_dato;
begin
if raiz^.sai = nil then
 begin
 suprime_min:= raiz^.info;
 raiz:=raiz^.sad
 end
 else
 suprime_min:= suprime_min (raiz^.sai)
end;
 procedure suprime (var raiz:t_punt; x:t_dato);
 begin
 if raiz <> nil then
 if x.DNI < raiz^.info.DNI then
 suprime (raiz^.sai,x)
 else
 if x.DNI > raiz^.info.DNI then
 suprime (raiz^.sad,x)
 else
 if (raiz^.sai = nil) and (raiz^.sad = nil) then
 raiz:= nil
 else
 if (raiz^.sai = nil) then
 raiz:= raiz^.sad
 else
 if (raiz^.sad = nil) then
 raiz:= raiz^.sai
 else
 raiz^.info:= suprime_min (raiz^.sad)
 end;
 function preorden(raiz:t_punt;buscado:string[8]):t_punt;
 begin
 if (raiz = nil) then preorden := nil
 else
 if ( raiz^.info.DNI = buscado) then
 preorden:= raiz
 else if raiz^.info.DNI > buscado then
 preorden := preorden(raiz^.sai,buscado)
 else
 preorden := preorden(raiz^.sad,buscado)
 end;
  procedure inorden(var raiz:t_punt);
  begin
  if raiz <> nil then begin
  inorden (raiz^.sai);
  writeln (raiz^.info.DNI);//Faltan agregar mas campos, pero deberia funcionar;
  inorden (raiz^.sad);
  end;
  end;
end.