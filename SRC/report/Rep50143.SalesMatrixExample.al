report 50144 "Sales Matrix Example"
{
    ApplicationArea = All;
    Caption = 'Sales Matrix Example';
    UsageCategory = ReportsAndAnalysis;
    DefaultLayout = RDLC;
    RDLCLayout = 'SalesMatrix.rdl';
    dataset
    {
        dataitem(Buffer; "Customer Month Buffer")
        {
            DataItemTableView = sorting("Customer No.", "Month No.");
            column(Customer_No_; "Customer No.") { }
            column(Month_Name; "Month Name") { }
            column(Total_Amount; "Total Amount") { }
        }
    }
    var
        TempBuffer: Record "Customer Month Buffer" temporary;
        SalesQuery: Query "Cust Sales by Month";

    trigger OnPreReport()
    begin
        BuildMatrixData();
    end;

    local procedure BuildMatrixData()
    var
        MonthNo: Integer;
    begin
        SalesQuery.Open();

        while SalesQuery.Read() do begin
            MonthNo := Date2DMY(SalesQuery.Posting_Date, 2);

            TempBuffer.Reset();
            TempBuffer.SetRange("Customer No.", SalesQuery.Customer_No_);
            TempBuffer.SetRange("Month No.", MonthNo);

            if not TempBuffer.FindFirst() then begin
                TempBuffer.Init();
                TempBuffer."Customer No." := SalesQuery.Customer_No_;
                TempBuffer."Month No." := MonthNo;
                TempBuffer."Month Name" := Format(DMY2Date(1, MonthNo, 2024), 0, '<Month Text>');
                TempBuffer."Total Amount" := SalesQuery.Amount;
                TempBuffer.Insert();
            end else begin
                TempBuffer."Total Amount" += SalesQuery.Amount;
                TempBuffer.Modify();
            end;
        end;

        SalesQuery.Close();

        // Transfer temp data to dataset
        Buffer.Copy(TempBuffer, true);
    end;
}
