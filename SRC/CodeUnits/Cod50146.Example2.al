codeunit 50146 Example2
{
    trigger OnRun()
    begin
        // Int1 := 25 DIV 3;
        // Int2 := 25 MOD 3;
        // IntResult := Int1 * 3 + Int2;
        // MESSAGE('The value of %1 is %2', 'IntResult', IntResult);
        // Amt1 := 25 / 3;
        // Amt2 := 0.00000000000000001;
        // AmtResult := (Amt1 - Int1) * 3 + Amt2;
        // MESSAGE('The value of %1 is %2', 'AmtResult', AmtResult);
        Get();


    end;

    local procedure Get()
    var
        employeeRec: Record Employee;
    begin
        employeeRec.reset();
        employeeRec.Get('EH');
        Message('Employee Name Is:%1', employeeRec.FullName());
    end;

    internal procedure findfirst()
    var
        employeeRec: Record Employee;
    begin
        employeeRec.SetRange(Age, 30);
        employeeRec.SetFilter(Gender, '=%1', employeeRec.Gender::Male);
        if employeeRec.FindFirst() then begin
            Message('the are staff age btn 18 is: %1', employeeRec.FullName());
        end else
            Error('not found');

    end;

    internal procedure Delete()
    begin
        employeeRec."No." := 'SH';
        employeeRec.Delete();
    end;

    internal procedure FindLast()
    var
        employeeRec: Record Employee;
    begin
        employeeRec.FindLast();
        Message('The Name of the last staff is: %1', employeeRec.FullName());
    end;

    internal procedure FindSet()
    var
        employeeRec: Record Employee;
    begin
        //employeeRec.SetRange(employeeRec.Gender, employeeRec.Gender::Female);
        employeeRec.SetFilter(Gender, '=%1', employeeRec.Gender::Female);
        employeeRec.SetFilter(Age, '>18');
        employeeRec.FindSet();
        repeat
            Message('The names of all the female employees with age >18 are: %1', employeeRec.FullName());
        until employeeRec.Next() = 0;

    end;

    internal procedure Insert()
    var
        employeeRec: Record Employee;
    begin
        employeeRec.Init();
        employeeRec."No." := 'SH';
        employeeRec."First Name" := 'Sharon';
        employeeRec."Last Name" := 'Jepkemoi';
        employeeRec.Age := 20;
        employeeRec.Insert();
        Message('successful');
    end;

    internal procedure modify()
    var
        employeeRec: Record Employee;
    begin
        employeeRec.Get('SH');
        employeeRec."University Name" := 'Egerton University';
        employeeRec.Modify();
        Message('Successfully Modified');
    end;


    var
        Int1: Integer;
        Int2: Integer;
        IntResult: Integer;
        Amt1: Decimal;
        Amt2: decimal;
        AmtResult: Decimal;
        employeeRec: Record Employee;
}
