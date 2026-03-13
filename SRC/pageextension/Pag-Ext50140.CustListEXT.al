pageextension 50140 CustListEXT extends "Customer List"
{
    //DAte fuctions
    trigger OnOpenPage()
    var
        c: Record "Cust. Ledger Entry";
        NewDate: Date;

    begin
        // c.SetFilter("Posting Date", 'Today+7D');
        // c.SetFilter("Posting Date", 'CQ');
        // c.SetFilter("Posting Date", 'Week');
        // c.SetFilter("Posting Date", 'Quarter');
        // c.SetFilter("Posting Date", 'P1');
        // c.SetFilter("Posting Date", 'Workdate');
        // NewDate := CalcDate('CQ-1M+10D', Today);
        // Message('New date: %1', NewDate);
        c.SetFilter("Posting Date", 'YESTERDAY...TOMORROW');
        Message(c.GetFilter("Posting Date"));

    end;
    //String Functions
    // trigger OnOpenPage()
    // var
    //     s: Text;
    //     s2: Text;
    //     L: List of [Text];
    // begin
    //     s := 'My Name is Sharon Jepkemoi';
    //     s2 := CopyStr(s, 12, 8000);
    //     // s2 := s.Substring(12, 6);
    //     // L := s.Split(',');
    //     // s2 := s.TrimStart('_').TrimEnd(' ');
    //     Message('Result %1', s2);
    // end;
}
