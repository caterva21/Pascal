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
    image[2] := '/\/\'
end;

//Graficar la imagen
procedure plot(var image : vec; x, y:integer);
begin
    GotoXY(x,y);
 writeln(image[1]);
 GotoXY(x,y+1);
 writeln(image[2])
end;

//Inicializa el vector
procedure init(var image: vec);
var i: integer;
begin
 for i := 1 to 2 do
    image[i] := ' '
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
        case mause of 
            'a': x := x - 1;
            'd': x := x + 1;
            'w': y := y - 1;
            's': y := y + 1
        end;
        clrscr;
<<<<<<< HEAD
        plot(image, x, y);
        delay(50)
    end
=======
        plot(image, x, y)
    end;
    
    readln
>>>>>>> 29b9a8d11090e395138bb184868491c32a3ba25f
END.

