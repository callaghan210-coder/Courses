report 50140 ExcelReport
{
    ApplicationArea = All;
    Caption = 'ExcelReport';
    UsageCategory = ReportsAndAnalysis;
    DefaultRenderingLayout = MyExcelLayout;

    dataset
    {
        dataitem("Bank Account Ledger Entry"; "Bank Account Ledger Entry")
        {
            column(Bank_Account_No_; "Bank Account No.") { }
            column(Posting_Date; "Posting Date") { }
            column(Amount__LCY_; "Amount (LCY)") { }
        }
    }
    rendering
    {
        layout(MyExcelLayout)
        {
            Type = Excel;
            LayoutFile = 'Layouts/BankLedger.xlsx';
        }
    }
}
