query 50141 "Cust Sales by Month"
{
    Caption = 'Cust Sales by Month';
    QueryType = Normal;

    elements
    {
        dataitem(CLE; "Cust. Ledger Entry")
        {
            column(Customer_No_; "Customer No.") { }
            column(Posting_Date; "Posting Date") { }
            column(Amount; Amount)
            {
                Method = Sum;
            }
        }
    }

    trigger OnBeforeOpen()
    begin

    end;
}
