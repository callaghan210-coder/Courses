query 50127 "Course Cost"
{
    QueryType = Normal;


    elements
    {
        dataitem(DataItemName1; Course)
        {
            column(ColumnName; Code)
            {

            }
            filter(FilterName; Price)
            {

            }
            dataitem(DataItemName2; CourseUnitLines)
            {
                DataItemLink = "Line No." = DataItemName1.Code;
                SqlJoinType = InnerJoin;
                column(ColumnName2; "Unit Code")
                {

                }
                column(ColumnName3; "Unit Cost")
                {

                }
            }
        }
    }

    var
        myInt: Integer;

    trigger OnBeforeOpen()
    begin

    end;
}