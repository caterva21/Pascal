(*Devuelve la hora actual del sistema operativo 
* hora (0, 23)
* minutos (0, 59)
* segundos (0, 59);
* centesimas (0, 99)*)
program get_time;
uses DOS;
var 
   h, m, s, sc : word;
begin
h  := 0;
m  := 0;
s  := 0;
sc := 0;
    gettime(h, m, s, sc);
    writeln('hora:',h);
    writeln('minutos:',m);
    writeln('segundos:', s);
    writeln('centisegundos:', sc:2);
    readln
	
end.

