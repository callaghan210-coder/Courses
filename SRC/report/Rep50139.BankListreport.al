report 50139 "Bank List report"
{
    ApplicationArea = All;
    Caption = 'Bank List report';
    UsageCategory = ReportsAndAnalysis;
    DefaultLayout = RDLC;
    RDLCLayout = 'Layouts/BankAccList.rdl';
    dataset
    {
        dataitem(Bank_Account; "Bank account")
        {
            RequestFilterFields = "No.", "Date Filter";
            column(Bank_No; "No.") { }
            column(Bank_Name; Name) { }
            column(Bank_Branch_No_; "Bank Branch No.") { }
            column(Balance__LCY_; "Balance (LCY)") { }
            column(CompanyName; Companyname) { }
            column(CompanyPic; CompanyInfo.Picture) { }
            column(Bank_Report_Title; Bank_Report_Title) { }
        }
    }
    trigger OnPreReport()
    begin
        CompanyInfo.get();
        CompanyInfo.CalcFields(Picture);
    end;

    var
        CompanyInfo: Record "Company Information";
        Bank_Report_Title: Label 'Bank Account Report';
}
