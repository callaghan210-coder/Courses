table 50127 CrunusCourse
{
    Caption = 'CrunusCourse';
    DataClassification = ToBeClassified;


    fields
    {
        field(10; "code"; Code[10])
        {
            Caption = 'code';
            DataClassification = CustomerContent;
        }
        field(20; Name; Text[30])
        {
            Caption = 'Name';
            DataClassification = CustomerContent;
        }
        field(40; "Type"; Option)
        {
            Caption = 'Type';
            DataClassification = CustomerContent;
            OptionMembers = "Instructor Led","e-learning","Remote Training";
        }
        field(50; "Duration"; Decimal)
        {
            Caption = 'Duration';
            DataClassification = CustomerContent;
        }
        field(60; Price; Decimal)
        {
            Caption = 'Price';
            DataClassification = CustomerContent;
        }
        field(70; Active; Boolean)
        {
            Caption = 'Active';
            DataClassification = CustomerContent;
        }
        field(80; Difficulty; Integer)
        {
            Caption = 'Difficulty';
            DataClassification = CustomerContent;
        }
        field(90; "Passing Rate"; Integer)
        {
            Caption = 'Passing Rate';
            DataClassification = CustomerContent;
        }
        field(100; "Intstructor Code"; Code[20])
        {
            Caption = 'Intstructor Code';
            DataClassification = CustomerContent;
            TableRelation = Course where(Type = const("Instructor Led"));
        }

    }
    keys
    {
        key(PK; "code")
        {
            Clustered = true;
        }
        key(key1; "Intstructor Code")
        {

        }
        key(key2; Type)
        {

        }
    }
}
