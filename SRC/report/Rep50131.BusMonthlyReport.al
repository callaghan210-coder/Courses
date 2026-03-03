report 50131 BusMonthlyReport
{
    ApplicationArea = All;
    Caption = 'BusMonthlyReport';
    UsageCategory = ReportsAndAnalysis;
    DefaultLayout = Word;
    WordLayout = 'Layouts/BusinessReport.docx';
    dataset
    {
        dataitem(Customer; Customer)
        {
            column(No_; "No.") { }
            column(Name; Name) { }
            column(Phone_No_; "Phone No.") { }
            column(E_Mail; "E-Mail") { }

        }
    }

}
