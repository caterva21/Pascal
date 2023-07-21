(*Coloca la fecha actual al sistema operativo 
* año (1980, 2099)
* mes (1, 12)
* dia (1, 31);*)
program set_date;
uses DOS;
var 
  a, m, d : word;
begin
//datos ingresados
writeln('Ingrese el anio (1980; 2099)');
readln(a);
writeln('Ingrese el mes (1, 12)');
readln(m);
writeln('Ingrese el dia (1, 31)');
readln(d);
//datos de salida
    setdate(a, m, d);
    writeln('anio:',a);
    writeln('mes:',m);
    writeln('dia:', d);
    readln
	
end.
END.

