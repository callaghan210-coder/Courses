pageextension 50124 EmployeeExt extends "Employee Card"
{
    layout
    {
        modify("Company E-Mail")
        {
            Editable = false;
        }
        addafter("No.")
        {
            field(Genders; Rec.Gender)
            {
                ApplicationArea = all;
            }
        }
        addafter("Job Title")
        {
            field("University Name"; Rec."University Name")
            {
                ApplicationArea = all;
            }
            field("Degree Name"; Rec."Degree Name")
            {
                ApplicationArea = all;

                trigger OnValidate()
                var
                    myInt: Integer;
                begin

                end;
            }

        }

    }

    actions
    {
        // Add changes to page actions here;
        addafter("Co&mments")
        {
            action("My Courses")
            {
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                Image = Process;
                Visible = true;
                RunObject = page "Courses List";


            }

        }
    }

    var
        myInt: Integer;
}