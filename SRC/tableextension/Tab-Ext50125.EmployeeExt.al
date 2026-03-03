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
    }
}
