page 50124 "Course Unit Lines"
{
    ApplicationArea = All;
    Caption = 'List Part Page';
    PageType = ListPart;
    SourceTable = CourseUnitLines;
    AutoSplitKey = true;
    DelayedInsert = true;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                Caption = 'General';
                field("Unit Code"; Rec."Unit Code")
                {
                    ToolTip = 'Specifies the value of the Unit Code field.', Comment = '%';
                }
                field("Unit Name"; Rec."Unit Name")
                {
                    ToolTip = 'Specifies the value of the Unit Name field.', Comment = '%';
                }

                field("Unit Cost"; Rec."Unit Cost")
                {
                    ToolTip = 'Specifies the value of the Unit Cost field.', Comment = '%';
                }
            }
        }
    }
}
