{interface de menu }

program menu_login;
uses crt,dos;
type
rectangle = array[1.. 3] of string[50];

//funcion cuadrodatos necesita tipo rectangle, libreria DOS
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
        writeln(vector[i])
    end;
    gotoxy(posx+2,posy+2)
end;


procedure menu;
var 
a,b: string[100];
begin
    // el centro de la pantalla es x:60 e y:15
    gotoxy(51,7);
    writeln('LOGIN');
     gotoxy(50,10);
    write('Usuario');
    cuadrodatos(40,10);
    readln(a);
     gotoxy(49,14);
    write('Contrasena');
    cuadrodatos(40,14);
    readln(b);
    readln;
end;

BEGIN
menu;
end.


