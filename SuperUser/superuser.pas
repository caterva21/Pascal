(*Desarrollo de un programa, en leguaje Pascal, de Loguin con:
1. Concepto de ABM.
2. Baja lógica y baja física.
3. Sistema cerrado.
4. Concepto de Super administrador. *)
Program superuser;
Uses crt;

Const 
    LOCATION = 'superuser.dat';
    LONG = 20;
    LIMIT = 4;
Type 
    pos = 1.. LIMIT;
    person = Record
        name:     String[LONG];
        user:     String[LONG];
        password: String[LONG];
            End;
    bag = array[pos] of person;

 Var
    student, teacher: bag;
    list : file of bag;
    
Procedure Search(user_S, password_S : String;student_S, teacher_S : bag);
Begin

End;

Procedure Compare (user_C, password_C : String;student_C, teacher_C : bag);
Begin
Search(user_C, password_C,student_C, teacher_C);
End;

Procedure Login(student_L, teacher_L: bag);
Var 
    user_L, password_L : String[LONG];
Begin 
    Writeln('******************** Login ********************');
    Writeln('Ingrese Usuario:');
    Readln(user_L);
    Writeln('Ingrese cgeayontraseña:');
    Readln(password_L);
    Compare(user_L, password_L,student_L, teacher_L);
End;
Procedure DataBegin(var teacher_DB: person);
    Begin
        Writeln('Ingrese el dato del Super Administrador');
        Writeln('Ingrese Nombre:');
        Readln(teacher_DB.name);
        Writeln('Ingrese el usuario');
        Readln(teacher_DB.user);
        Writeln('Ingrese la contraseña');
        Readln(teacher_DB.password);
    End;
Procedure zero(var student_Z, teacher_Z: bag);
Var 
    i: Integer;
Begin
for i:= 1 to LIMIT do
    Begin
    student_Z[i].name := ' ';
    student_Z[i].user := ' ';
    student_Z[i].password := ' ';
    teacher_Z[i].name := ' ';
    teacher_Z[i].user := ' ';
    teacher_Z[i].password := ' ';
    End;
End;
Begin   //Programa Principal
    assign(list, LOCATION);
    Rewrite(list);
    Reset(list);
    zero(student, teacher);
    DataBegin(teacher[1]);
    Seek(list, filesize(list));
    Write(list, teacher);
    Login(student, teacher);
    Close(list);
    Readln;
End.

