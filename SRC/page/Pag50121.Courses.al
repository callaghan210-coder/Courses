page 50121 Courses
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    PromotedActionCategories = 'New, Process, Report, Approval';
    SourceTable = Course;
    Caption = 'My Courses';

    layout
    {
        area(Content)
        {
            Group(General)
            {
                field(Code; Rec.Code)
                {

                }
                field(Name; Rec.Name)
                {


                }
                field(Description; Rec.Description)
                {

                }
                field(Duration; Rec.Duration)
                {


                }
                field(Price; Rec.Price)
                {

                }
                field(Type; Rec.Type)
                {

                }
                field(Active; Rec.Active)
                {

                }
                field(TotalUnitCost; Rec.TotalUnitCost)
                {
                    ApplicationArea = all;
                    Editable = false;
                    trigger OnDrillDown()
                    var
                        myInt: Integer;
                    begin

                    end;
                }
            }
            group("Social Media Platforms")
            {
                field("Social media"; Rec."Social media")
                {
                    ApplicationArea = all;
                    Visible = false;
                }
                field("Carreer Objective"; Rec."Carreer Objective")
                {
                    ApplicationArea = all;
                    MultiLine = true;

                }

            }
            part(courseLine; "Course Unit Lines")
            {
                SubPageLink = "No." = field(Code);
                ApplicationArea = All;
                Caption = 'Course Unit Lines';
            }
        }
        area(Factboxes)
        {

        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {

                trigger OnAction()
                begin

                end;
            }
        }
    }
    trigger OnOpenPage()
    var
        myInt: Integer;
    begin
        // Message('Re you sure you have permisssion to this page!!');
    end;
}