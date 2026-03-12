pageextension 50140 CustListEXT extends "Customer List"
{
    trigger OnOpenPage()
    var
        s: Text;
        s2: Text;
        L: List of [Text];
    begin
        s := 'My,Name,is,Sharon,Jepkemoi';
        // s2 := CopyStr(s, 12, 6);
        // s2 := s.Substring(12, 6);
        L := s.Split(',');
        Message('Result %1', L);
    end;
}
