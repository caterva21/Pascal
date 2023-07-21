//grafica una animacion
program animation;
uses crt, DOS;
const LONG=5;
type
 vec = array[1.. LONG] of string[10]; 
var 
   image:vec; 
//carga la imagen
procedure log(var image : vec);
begin
    image[1] := ' /\';
    image[2] := '/\/\';
   
end;

//Graficar la imagen
procedure plot(var image : vec);
var i: integer;
begin
 for i := 1 to 2 do
 writeln(image[i]);
end;
//inicializa el vector
procedure init(var image: vec);
var i: integer;
begin
 for i := 1 to 2 do
    image[i] := ' ';
end;

//Progranma princiipal
Begin
init(image);
log(image);
plot(image);
Delay(300);
END.

