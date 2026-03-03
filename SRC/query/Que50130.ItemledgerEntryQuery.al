query 50130 "Item ledger Entry Query"
{
    QueryType = Normal;
    QueryCategory = 'Item List', 'Customer List';

    elements
    {
        dataitem(Item_Ledger_Eltry; "Item Ledger Entry")
        {
            column(Item_No_; "Item No.")
            {

            }
            column(Quantity; Quantity)
            {
                Method = Sum;
            }
            filter(Posting_Date; "Posting Date")
            {

            }
        }
    }

}

query 50131 "Item Query Cross Join"
{
    QueryType = Normal;
    QueryCategory = 'Item List', 'Customer List';

    elements
    {
        dataitem(Item; Item)
        {
            column(No_; "No.")
            {

            }
            column(Description; Description)
            {

            }
            dataitem(Item_Ledger_Entry; "Item Ledger Entry")
            {
                // DataItemLink= "Item No." = Item."No.";
                SqlJoinType = CrossJoin;
                column(Posting_Date; "Posting Date")
                {

                }
                column(Document_No_; "Document No.")
                {

                }
                column(ItemLedger_Description; Description)
                {

                }
                column(Quantity; Quantity)
                {

                }


            }
        }
    }
}

query 50132 "Item Query Inner Join"
{
    QueryType = Normal;
    QueryCategory = 'Item List', 'Customer List';

    elements
    {
        dataitem(Item; Item)
        {
            column(No_; "No.")
            {

            }
            column(Description; Description)
            {

            }
            dataitem(Item_Ledger_Entry; "Item Ledger Entry")
            {
                DataItemLink = "Item No." = Item."No.";
                SqlJoinType = InnerJoin;
                column(Posting_Date; "Posting Date")
                {

                }
                column(Document_No_; "Document No.")
                {

                }
                column(ItemLedger_Description; Description)
                {

                }
                column(Quantity; Quantity)
                {

                }


            }
        }
    }
}

query 50133 "Item Query Lefet Outer Join"
{
    QueryType = Normal;
    QueryCategory = 'Item List', 'Customer List';

    elements
    {
        dataitem(Item; Item)
        {
            column(No_; "No.")
            {

            }
            column(Description; Description)
            {

            }
            dataitem(Item_Ledger_Entry; "Item Ledger Entry")
            {
                DataItemLink = "Item No." = Item."No.";
                SqlJoinType = LeftOuterJoin;
                column(Posting_Date; "Posting Date")
                {

                }
                column(Document_No_; "Document No.")
                {

                }
                column(ItemLedger_Description; Description)
                {

                }
                column(Quantity; Quantity)
                {

                }


            }
        }
    }
}

query 50134 "Item Query Right Outer Join"
{
    QueryType = Normal;
    QueryCategory = 'Item List', 'Customer List';

    elements
    {
        dataitem(Item; Item)
        {
            column(No_; "No.")
            {

            }
            column(Description; Description)
            {

            }
            dataitem(Item_Ledger_Entry; "Item Ledger Entry")
            {
                DataItemLink = "Item No." = Item."No.";
                SqlJoinType = RightOuterJoin;
                column(Posting_Date; "Posting Date")
                {

                }
                column(Document_No_; "Document No.")
                {

                }
                column(ItemLedger_Description; Description)
                {

                }
                column(Quantity; Quantity)
                {

                }


            }
        }
    }
}

query 50135 "Item Query Full outer Join"
{
    QueryType = Normal;
    QueryCategory = 'Item List', 'Customer List';

    elements
    {
        dataitem(Item; Item)
        {
            column(No_; "No.")
            {

            }
            column(Description; Description)
            {

            }
            dataitem(Item_Ledger_Entry; "Item Ledger Entry")
            {
                DataItemLink = "Item No." = Item."No.";
                SqlJoinType = FullOuterJoin;
                column(Posting_Date; "Posting Date")
                {

                }
                column(Document_No_; "Document No.")
                {

                }
                column(ItemLedger_Description; Description)
                {

                }
                column(Quantity; Quantity)
                {

                }


            }
        }
    }
}

query 50138 "Item Ledger Query"
{
    QueryType = Normal;
    QueryCategory = 'Item List', 'Customer List';

    elements
    {
        dataitem(Item; Item)
        {
            column(No_; "No.")
            {

            }

            column(Description; Description)
            {

            }
            column(Base_Unit_of_Measure; "Base Unit of Measure")
            {

            }
            column(Production_BOM_No_; "Production BOM No.")
            {

            }
            dataitem(Item_Ledger_Entry; "Item Ledger Entry")
            {
                DataItemLink = "Item No." = Item."No.";
                SqlJoinType = FullOuterJoin;
                column(Posting_Date; "Posting Date")
                {

                }
                column(Document_No_; "Document No.")
                {

                }
                column(ItemLedger_Description; Description)
                {

                }
                column(Quantity; Quantity)
                {

                }


            }
        }
    }
}

report 50137 "Item Query Inner Join Report"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultRenderingLayout = ItemQueryRdl;

    dataset
    {
        dataitem(Namba; Integer)
        {
            column(ItemNo; ItemQueryInnerJoin.No_)
            {

            }
            column(IteDesc; ItemQueryInnerJoin.Description)
            {

            }

            trigger OnAfterGetRecord()
            var
                myInt: Integer;
            begin
                if ItemQueryInnerJoin.read() then
                    CurrReport.Break();
            end;

            trigger OnPreDataItem()
            var
                myInt: Integer;
            begin
                ItemQueryInnerJoin.open();
                Namba.SetRange(Number, 1, NoOfRows);
            end;
        }
    }


    rendering
    {
        layout(ItemQueryRdl)
        {
            Type = RDLC;
            LayoutFile = 'ItemQueryRdl.rdl';
        }
    }

    var
        ItemQueryInnerJoin: Query "Item Query Inner Join";
        NoOfRows: Integer;
}

report 50136 "Query Test Report"
{
    ProcessingOnly = true;

    trigger OnPreReport()
    begin
        ItemLedgQuery.Open();

        while ItemLedgQuery.Read() do begin
            // Access query columns like this:

            Message(
                'Item: %1, Qty: %2',
                ItemLedgQuery.No_,
                ItemLedgQuery.Quantity
            );
        end;

        ItemLedgQuery.Close();
    end;

    var
        ItemLedgQuery: Query "Item Ledger Query";
}
