{ Implementa un menu con 3 opciones }
program modelo_menu;
uses crt;

procedure menu;
var option: byte;
begin
    writeln('Menu');
    writeln('1: Opcion 1 ');
    writeln('2: Opcion 2 ');
    writeln('3: exit ');
    read(option);
    case option of
        1:  writeln('Opcion 1 ');
        2:  writeln('Opcion 2 ');
        3:
        else
        writeln('incorrecto')
        end
end;

BEGIN
menu;
end.
