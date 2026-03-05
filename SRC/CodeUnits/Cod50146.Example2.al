codeunit 50146 Example2
{
    trigger OnRun()
    begin
        Int1 := 25 DIV 3;
        Int2 := 25 MOD 3;
        IntResult := Int1 * 3 + Int2;
        MESSAGE('The value of %1 is %2', 'IntResult', IntResult);
        Amt1 := 25 / 3;
        Amt2 := 0.00000000000000001;
        AmtResult := (Amt1 - Int1) * 3 + Amt2;
        MESSAGE('The value of %1 is %2', 'AmtResult', AmtResult);
    end;

    var
        Int1: Integer;
        Int2: Integer;
        IntResult: Integer;
        Amt1: Decimal;
        Amt2: decimal;
        AmtResult: Decimal;
}
