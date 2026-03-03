pageextension 50132 PurchaseOrdersExt extends "Purchase Lines"
{

    actions
    {
        addafter("Reservation Entries")
        {
            action("Purchase Orders")
            {
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                Image = Process;
                RunObject = query "Purchase Orders";

            }


        }
    }
}

