query 50129 "Purchase Orders"
{
    QueryType = Normal;
    QueryCategory = 'Purchase Orders', 'Purchase Lines';

    elements
    {
        dataitem(Purchase_Header; "Purchase Header")
        {
            column(BuyFromVendorNumber; "Buy-from Vendor No.")
            {

            }
            column(BuyFromVendorName; "Buy-from Vendor Name")
            {

            }
            column(OrderDate; "Order Date")
            {

            }
            column(AmountIncludingVat; "Amount Including VAT")
            {

            }
            dataitem(Purchase_Line; "Purchase Line")
            {
                DataItemLink = "Line No." = Purchase_Header."Buy-from Vendor No.";
                column(No_; "No.")
                {

                }
                column(Description; Description)
                {

                }
                column(Quantity; Quantity)
                {

                }
                column(Amount; Amount)
                {

                }
            }
        }
    }

    var
        myInt: Integer;

    trigger OnBeforeOpen()
    begin

    end;
}