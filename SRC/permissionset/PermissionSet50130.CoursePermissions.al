permissionset 50130 "Course Permissions"
{
    Assignable = true;
    //IncludedPermissionSets = SomePermissionSet;
    Permissions =
      tabledata Course = rimd,
      tabledata CourseUnitLines = rimd,
      page Courses = X,
      page "Course Unit Lines" = X,
      page "Courses List" = X;

}