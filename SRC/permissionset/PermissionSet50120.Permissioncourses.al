permissionset 50120 "Permission-courses"
{
    Assignable = true;
    Permissions = tabledata Course = RIMD,
        tabledata CourseUnitLines = RI,
        tabledata CrunusCourse = RIMD,
        table Course = X,
        table CourseUnitLines = X,
        table CrunusCourse = X,
        report "My Course List" = X,
        page "Course Unit Lines" = X,
        page Courses = X,
        page "Courses List" = X,
        page CronusCourse = X,
        page CronusCourseCard = X,
        query "Course Cost" = X;
}