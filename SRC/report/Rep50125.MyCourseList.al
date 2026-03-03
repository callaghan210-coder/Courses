report 50125 "My Course List"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    //DefaultLayout = Word;
    DefaultLayout = RDLC;
    RDLCLayout = 'MyCourseList.rdl';
    WordLayout = 'MyCourseList.docx';

    dataset
    {
        dataitem(DataItemName; Course)
        {
            RequestFilterFields = Code, Active;
            column(Name; Name)
            {

            }
            column(Code; Code)
            {

            }
            column(Description; Description)
            {

            }
            dataitem(CourseUnitLines; CourseUnitLines)
            {
                DataItemLinkReference = DataItemName;
                DataItemLink = "No." = field(Code);
                column(No_; "No.")
                {

                }
                column(Line_No_; "Line No.")
                {

                }
                column(Unit_Code; "Unit Code")
                {

                }
                column(Unit_Name; "Unit Name")
                {

                }
                column(Unit_Cost; "Unit Cost")
                {

                }
            }

        }
    }

    requestpage
    {
        AboutTitle = 'Teaching tip title';
        AboutText = 'Teaching tip content';
        layout
        {
            area(Content)
            {
                group(GroupName)
                {

                }
            }
        }

        actions
        {
            area(processing)
            {
                action(LayoutName)
                {

                }
            }
        }
    }



    var
        myInt: Integer;

    trigger OnInitReport()
    var
        myInt: Integer;
    begin
        Message('Are you sure you want to run this report?');

    end;
}