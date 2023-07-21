(*Devuelve la fecha actual del sistema operativo 
* año (1980; 2099)
* mes (1;12)
* dia (1,31);
* dia de la semana (0, 6)*)
program get_date;
uses DOS;
var 
   a, m, d, ds : word;
begin
a  := 0;
m  := 0;
d  := 0;
ds := 0;
    getdate(a, m, d, ds);
    writeln('año:',a);
    writeln('mes:',m);
    writeln('dia:', d);
    writeln('dia de la semana:', ds:2);
    readln
	
end.

