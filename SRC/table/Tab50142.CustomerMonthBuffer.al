table 50142 "Customer Month Buffer"
{
    Caption = 'Customer Month Buffer';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Customer No."; code[20])
        {
            Caption = 'Customer No.';
        }
        field(2; "Month No."; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(3; "Month Name"; Text[20])
        {
            DataClassification = ToBeClassified;
        }
        field(4; "Total Amount"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; "Customer No.", "Month No.")
        {
            Clustered = true;
        }
    }
}
