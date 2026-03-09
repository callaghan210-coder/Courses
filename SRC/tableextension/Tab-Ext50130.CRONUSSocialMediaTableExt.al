tableextension 50130 CRONUSSocialMediaTableExt extends Customer
{
    fields
    {
        field(50110; Facebook; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(50111; X; Text[30])
        {
            DataClassification = CustomerContent;
            Caption = 'X';
        }
        field(50112; Instagram; Text[50])
        {
            DataClassification = CustomerContent;
            Caption = 'Instagram';
        }
        field(50113; Linkedin; Text[50])
        {
            DataClassification = CustomerContent;
            Caption = 'Linkedin';
        }
    }

    keys
    {
        key(Key23; Linkedin)
        {

        }
        key(key24; "Currency Id")
        {

        }
    }
    fieldgroups
    {

        addlast(DropDown; Facebook, Instagram)
        {

        }
    }
    procedure CalculateCreditLimit(): Decimal
    var
        CustLedgEntry: Record "Cust. Ledger Entry";
        TotalSales: Decimal;
        NewLimit: Decimal;
    begin
        CustLedgEntry.SetRange("Customer No.", "No.");
        CustLedgEntry.SetRange("Posting Date", CalcDate('-12m', WorkDate()), WorkDate());
        CustLedgEntry.CalcSums("Sales (LCY)");
        TotalSales := CustLedgEntry."Sales (LCY)";
        NewLimit := TotalSales * 0.5;
        NewLimit := Round(NewLimit, 10000);
        exit(NewLimit);
    end;

    procedure UpdateCreditLimit(Var NewCreditLimit: Decimal)
    begin
        NewCreditLimit := CalculateCreditLimit();
        if "Credit Limit (LCY)" = NewCreditLimit then begin
            Message('Credit Limit did not change');
            exit
        end;
        Validate("Credit Limit (LCY)", NewCreditLimit);
        Modify()
    end;
}