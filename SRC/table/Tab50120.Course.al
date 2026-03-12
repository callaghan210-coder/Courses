table 50120 Course
{
    DataClassification = ToBeClassified;
    LookupPageId = "Courses List";
    DrillDownPageId = "Courses List";


    fields
    {
        field(10; Code; Code[10])
        {
            DataClassification = ToBeClassified;
        }
        field(20; Name; Text[30])
        {
            DataClassification = ToBeClassified;
        }
        field(30; Description; text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(40; Type; Option)
        {
            OptionMembers = "Instructor Led","e-Learning","Remote Training";
        }
        field(50; Duration; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(60; Price; Decimal)
        {
            DataClassification = ToBeClassified;
            trigger OnValidate()
            var
                myInt: Integer;
            begin
                if price > 10000 then begin
                    Error('price is illegal');
                end else
                    Price := 100000;

            end;
        }
        field(70; Active; Boolean)
        {
            DataClassification = ToBeClassified;
        }
        field(80; Difficulty; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(90; "Passing Rate"; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(91; "Social media"; text[50])
        {
            DataClassification = ToBeClassified;
            TableRelation = Customer;
        }
        field(92; TotalUnitCost; Decimal)
        {
            FieldClass = FlowField;
            CalcFormula = sum(CourseUnitLines."Unit Cost" where(
               "No." = field(Code)

            ));
        }
        field(93; "Carreer Objective"; text[2048])
        {
            DataClassification = ToBeClassified;
        }
        field(94; Status; Option)
        {
            OptionMembers = Open,"Pending Approval",Approved,Rejected;
            Editable = false;
        }
    }

    keys
    {
        key(pk; Code)
        {
            Clustered = true;
        }
    }
    trigger OnInsert()
    var
        myInt: Integer;
    begin
        Message('Hey are you sure you want to create this record?');
    end;

    trigger OnModify()
    var
        myInt: Integer;
    begin
        Message('Hey are you sure you want to modify this record?');

    end;

    trigger OnDelete()
    var
        myInt: Integer;
    begin
        Message('Hey you are about to delete,are u  sure');
    end;

    trigger OnRename()
    var
        myInt: Integer;
    begin
        Message('why are you renaming?do you want to proceed?');
    end;
}