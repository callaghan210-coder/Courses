tableextension 50125 EmployeeExt extends Employee
{
    fields
    {
        field(50120; "University Name"; Text[50])
        {
            Caption = 'University Name';
            DataClassification = ToBeClassified;
        }
        field(50121; "Degree Name"; Text[50])
        {
            Caption = 'Degree Name';
            DataClassification = ToBeClassified;
        }
        field(50122; Age; Integer)
        {
            DataClassification = ToBeClassified;
            Caption = 'Age';
            TableRelation = User;
            trigger OnValidate()
            var
                Emp: record Employee;
            begin
                Emp.Get(Age)
                //logic
            end;
        }
    }
}
