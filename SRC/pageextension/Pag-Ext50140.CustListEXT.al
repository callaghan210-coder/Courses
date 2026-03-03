pageextension 50140 CustListEXT extends "Customer List"
{
    trigger OnOpenPage()
    begin
        Report.Run(Report::"Bank List report");
    end;
}
