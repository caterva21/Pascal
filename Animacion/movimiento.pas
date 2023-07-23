(*implementa el movimiento a una animación
*los movimientos son:
* a: izquierda
* d: derecha 
* s: abajo
* w: arriba *)
program anchura;
uses crt;
type
 vec = array[1.. 2] of string[10]; 
var
image : vec; 
x, y, i: integer;
mause: char;

//Carga el vector
procedure log(var image : vec);
begin
    image[1] := ' /\';
    image[2] := '/\/\';
end;

//Graficar la imagen
procedure plot(var image : vec; x, y:integer);
begin
    GotoXY(x,y);
 writeln(image[1]);
 GotoXY(x,y+1);
 writeln(image[2]);
end;

//Inicializa el vector
procedure init(var image: vec);
var i: integer;
begin
 for i := 1 to 2 do
    image[i] := ' ';
end;
BEGIN
 init(image);
 log(image);
    clrscr;
    //posicion inicial del cursor
    x:= 10;
    y:=  10;
    //logica del movimiento
    for i := 1 to 1000 do
     begin
     mause := readkey;
        if mause = 'a' then
           x := x - 1;
         if mause = 'd' then
           x := x + 1;
        if mause = 'w' then
           y := y - 1;
         if mause = 's' then
           y := y + 1;
        delay(50);
        clrscr;
        plot(image, x, y)
    end;
    
    readln
END.

