codeunit 50148 "Course Workflow Response"
{
    procedure SendCourseApproval(var Course: Record Course)
    begin
        Message('Course %1 has been sent for approval.', Course.Code);
    end;
}
