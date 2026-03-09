pageextension 50131 CRONUSSocialMediaCard extends "Customer Card"
{
    layout
    {
        modify("Credit Limit (LCY)")
        {
            Editable = false;
        }

        addafter("No.")
        {
            field(Blocked1; Rec.Blocked)
            {
                Caption = 'Blocked';
            }
        }

        addafter(General)
        {
            group(SocialMedia)
            {
                Caption = 'Social Media';

                field(Facebook; Rec.Facebook)
                {
                }

                field(X; Rec.X)
                {
                }

                field(Instagram; Rec.Instagram)
                {
                }

                field(Linkedin; Rec.Linkedin)
                {
                }
            }
        }

    }
    actions
    {
        addafter(Contact)
        {
            action(UpdateCreditLimit)
            {
                ApplicationArea = All;
                Caption = 'Update Credit Limit';
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                Image = CalculateCost;

                trigger OnAction()
                begin
                    CallUpdateCreditLimit();
                end;
            }
        }
    }

    procedure CallUpdateCreditLimit()
    var
        NewLimit: Decimal;
    begin
        NewLimit := Rec.CalculateCreditLimit();

        if NewLimit > Rec."Credit Limit (LCY)" then
            if not Confirm('Increase Credit Limit to %1?', false, NewLimit) then
                exit;

        Rec.UpdateCreditLimit(NewLimit);
    end;
}


