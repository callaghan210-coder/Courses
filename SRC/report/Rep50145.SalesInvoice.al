report 50145 "Sales Invoice"
{
    ApplicationArea = All;
    Caption = 'Sales Invoice';
    UsageCategory = ReportsAndAnalysis;
    DefaultRenderingLayout = SalesInvoice;

    dataset
    {
        dataitem("Sales Invoice Header"; "Sales Invoice Header")
        {
            column(No_; "No.") { }
            column(Sell_to_Customer_No_; "Sell-to Customer No.") { }
            column(Sell_to_Customer_Name; "Sell-to Customer Name") { }
            column(Location_Code; "Location Code") { }
            column(Amount_Including_VAT; "Amount Including VAT") { }
            column(Salesperson_Code; "Salesperson Code") { }
        }
    }
    rendering
    {
        layout(SalesInvoice)
        {
            Type = RDLC;
            LayoutFile = 'SalesInvoice.rdl';
        }
    }
}
