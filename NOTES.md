Instructions

1. Refactor the form partial to accept the argument
   to the form_for helper as a local.

   You'll also need to change the new.html.erb and edit.html.erb views as well.

2. Refactor the student partial to pass through each rendered student
   as a local.

   On the classroom show page:
   * iterate through each classroom's students
   * display each of them using your student partial with locals

3. Create a classroom partial to display classroom information on the
   classroom show page.

4. Add in search functionality such that:
   users can search for a student by name
   and see all matching results on the students index page.

   The results should be displayed by rendering
   a students/student partial
