codeunit 50145 Example
{


    trigger OnRun()
    begin
        LoopNo := 25;
        MESSAGE('The value of %1 is %2', 'LoopNo', LoopNo);
        LoopNo := -30;
        MESSAGE('The value of %1 is %2', 'LoopNo', LoopNo);
        Amount := 27.50;
        MESSAGE('The value of %1 is %2', 'Amount', Amount);
        "When Was It" := 19970930D;
        MESSAGE('The value of %1 is %2', 'When Was It', "When Was It");
        "Code Number" := ' abc 123 x';
        MESSAGE('The value of %1 is %2', 'Code Number', "Code Number");
        CodeA := 'HELLO THERE';
        TextA := 'How Are You? ';
        CodeB := CodeA + '! ' + TextA;
        MESSAGE('The value of %1 is %2', 'CodeB', CodeB);
        MaxChar := MAXSTRLEN(Description);
        MESSAGE('The value of %1 is %2', 'MaxChar', MaxChar);
        Description := COPYSTR('The message is:' + CodeB, 1, MAXSTRLEN(Description));
        MESSAGE('The value of %1 is %2', 'Description', Description)

    end;

    var
        LoopNo: Integer;
        amount: Decimal;
        "When Was It": Date;
        "Code Number": Text;
        CodeA: Text;
        CodeB: Text;
        TextA: Code[60];
        MaxChar: Integer;
        Description: Text[30];


}
