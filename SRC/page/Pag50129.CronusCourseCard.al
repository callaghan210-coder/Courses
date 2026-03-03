page 50129 CronusCourseCard
{
    ApplicationArea = All;
    Caption = 'CronusCourseCard';
    PageType = Card;
    SourceTable = CrunusCourse;

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';

                field("code"; Rec."code")
                {
                    ToolTip = 'Specifies the value of the code field.', Comment = '%';
                }
                field(Name; Rec.Name)
                {
                    ToolTip = 'Specifies the value of the Name field.', Comment = '%';
                }
                field("Intstructor Code"; Rec."Intstructor Code")
                {
                    ToolTip = 'Specifies the value of the Intstructor Code field.', Comment = '%';
                }
                field(Active; Rec.Active)
                {
                    ToolTip = 'Specifies the value of the Active field.', Comment = '%';
                }
                field(Difficulty; Rec.Difficulty)
                {
                    ToolTip = 'Specifies the value of the Difficulty field.', Comment = '%';
                }
                field("Duration"; Rec."Duration")
                {
                    ToolTip = 'Specifies the value of the Duration field.', Comment = '%';
                }
                field("Passing Rate"; Rec."Passing Rate")
                {
                    ToolTip = 'Specifies the value of the Passing Rate field.', Comment = '%';
                }
                field("Type"; Rec."Type")
                {
                    ToolTip = 'Specifies the value of the Type field.', Comment = '%';
                }
                field(Price; Rec.Price)
                {
                    ToolTip = 'Specifies the value of the Price field.', Comment = '%';
                }

            }
        }
    }
}
