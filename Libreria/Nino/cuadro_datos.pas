{ se crea un rectangulos para ingresar datos, hay que pasarle la posicion
* en (x;y) recomendado (x=50) e (y=10)
}
program cuadro_datos;
uses crt;
type
rectangle = array[1.. 3] of string[50];
//funcion cuadrodatos requiere del vector antes declarado en type
procedure cuadrodatos(posx,posy:integer);
var 
    i:byte;
    vector:rectangle;
begin
    vector[1]:=' -------------------------';
    vector[2]:='                           ';
    vector[3]:=' ------------------------- ';
    for i:= 1 to 3 do
    begin
        gotoxy(posx,posy+i);
        writeln(vector[i]);
    end;
    gotoxy(posx+2,posy+2);
end;
BEGIN	
//le paso la posicion donde quiero el recuadro
cuadrodatos(50,10)	
END.

