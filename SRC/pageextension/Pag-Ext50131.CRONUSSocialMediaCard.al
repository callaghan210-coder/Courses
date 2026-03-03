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

            }
        }
        addafter(General)
        {
            group(SocialMedia)
            {
                Caption = 'social Media';
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


}