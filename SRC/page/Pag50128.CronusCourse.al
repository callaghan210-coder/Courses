page 50128 CronusCourse
{
    ApplicationArea = All;
    Caption = 'CronusCourse';
    PageType = List;
    SourceTable = CrunusCourse;
    UsageCategory = Lists;
    CardPageId = CronusCourseCard;
    AdditionalSearchTerms = 'Program';

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("code"; Rec."code")
                {
                    ToolTip = 'Specifies the value of the code field.', Comment = '%';
                }
                field(Name; Rec.Name)
                {
                    ToolTip = 'Specifies the value of the Name field.', Comment = '%';
                    ShowMandatory = true;
                }
                field("Intstructor Code"; Rec."Intstructor Code")
                {
                    ToolTip = 'Specifies the value of the Intstructor Code field.', Comment = '%';
                }
                field("Type"; Rec."Type")
                {
                    ToolTip = 'Specifies the value of the Type field.', Comment = '%';
                }
                field("Duration"; Rec."Duration")
                {
                    ToolTip = 'Specifies the value of the Duration field.', Comment = '%';
                    NotBlank = true;
                }
                field(Active; Rec.Active)
                {
                    ToolTip = 'Specifies the value of the Active field.', Comment = '%';
                }
                field(Difficulty; Rec.Difficulty)
                {
                    ToolTip = 'Specifies the value of the Difficulty field.', Comment = '%';
                }
                field(Price; Rec.Price)
                {
                    ToolTip = 'Specifies the value of the Price field.', Comment = '%';
                }
                field("Passing Rate"; Rec."Passing Rate")
                {
                    ToolTip = 'Specifies the value of the Passing Rate field.', Comment = '%';
                }
            }
        }
    }
}
