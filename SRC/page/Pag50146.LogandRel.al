page 50146 LogandRel
{
    ApplicationArea = All;
    Caption = 'Logical and Relational Expressions';
    PageType = Card;

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';

                group(Input)
                {
                    field(Value1; Value1)
                    {
                        ApplicationArea = All;
                    }

                    field(Value2; Value2)
                    {
                        ApplicationArea = All;
                    }
                }

                group(Output)
                {
                    field(Result; Result)
                    {
                        ApplicationArea = All;
                    }
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(Execute)
            {
                ApplicationArea = All;
                Caption = 'Execute';
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                Image = Process;

                trigger OnAction()
                begin
                    Result := Value1 > Value2;
                end;
            }
        }
    }

    var
        Value1: Integer;
        Value2: Integer;
        Result: Boolean;
}