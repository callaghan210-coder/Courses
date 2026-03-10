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
            field(Age; Rec.Age)
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
            action("EmployeeInfor")
            {
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                Image = Process;
                Visible = true;
                trigger OnAction()
                var
                    example2CodeUnit: Codeunit Example2;
                begin
                    example2CodeUnit.Run();
                end;


            }
            action("FindFirst")
            {
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                Image = Process;
                Visible = true;
                trigger OnAction()
                var
                    example2CodeUnit: Codeunit Example2;
                begin
                    example2CodeUnit.findfirst();
                end;


            }
            action("FindLast")
            {
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                Image = Process;
                Visible = true;
                trigger OnAction()
                var
                    example2CodeUnit: Codeunit Example2;
                begin
                    example2CodeUnit.FindLast();
                end;
            }
            action("FindSet")
            {
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                Image = Process;
                Visible = true;
                trigger OnAction()
                var
                    example2CodeUnit: Codeunit Example2;
                begin
                    example2CodeUnit.FindSet();
                end;
            }
            action("Create New Employee")
            {
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                Image = Process;
                Visible = true;
                trigger OnAction()
                var
                    example2CodeUnit: Codeunit Example2;
                begin
                    example2CodeUnit.Insert();
                end;
            }
            action(Modify)
            {
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                Image = Process;
                Visible = true;
                trigger OnAction()
                var
                    example2CodeUnit: Codeunit Example2;
                begin
                    example2CodeUnit.modify();
                end;
            }
            action(Delete)
            {
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                Image = Process;
                Visible = true;
                trigger OnAction()
                var
                    example2CodeUnit: Codeunit Example2;
                begin
                    example2CodeUnit.Delete();
                end;
            }


        }
    }

    var
        myInt: Integer;

    // trigger OnOpenPage()
    // var
    //     CustomerName: Record Customer;
    //     CustomerCode: Code[20];
    // begin
    //     CustomerCode := CustomerName."No.";
    //     CustomerName.Get(CustomerCode);
    //     Message('Customer Name: %1', CustomerCode);
    // end;
}