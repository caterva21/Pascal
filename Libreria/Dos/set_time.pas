(*Coloca la hora actual al sistema operativo 
* hora (0, 23)
* minutos (0, 59)
* segundos (0, 59);
* centesimas (0, 99)*)
program set_time;
uses DOS;
var 
   h, m, s, sc : word;
begin
//datos ingresados
writeln('Ingrese la hora (0, 23):');
readln(h);
writeln('Ingrese los minutos (0, 59):');
readln(m);
writeln('Ingrese los segundos (0, 59):');
readln(s);
writeln('Ingrese los centisegundos (0, 99):');
readln(sc);
//datos de salida
    settime(h, m, s, sc);
    writeln('hora:',h);
    writeln('minutos:',m);
    writeln('segundos:', s);
    writeln('centisegundos:', sc:2);
    readln
	
end.
END.

