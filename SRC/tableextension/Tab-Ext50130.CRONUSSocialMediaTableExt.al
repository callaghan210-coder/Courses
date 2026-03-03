tableextension 50130 CRONUSSocialMediaTableExt extends Customer
{
    fields
    {
        field(50110; Facebook; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(50111; X; Text[30])
        {
            DataClassification = CustomerContent;
            Caption = 'X';
        }
        field(50112; Instagram; Text[50])
        {
            DataClassification = CustomerContent;
            Caption = 'Instagram';
        }
        field(50113; Linkedin; Text[50])
        {
            DataClassification = CustomerContent;
            Caption = 'Linkedin';
        }
    }

    keys
    {
        key(Key23; Linkedin)
        {

        }
        key(key24; "Currency Id")
        {

        }
    }
    fieldgroups
    {

        addlast(DropDown; Facebook, Instagram)
        {

        }
    }
}