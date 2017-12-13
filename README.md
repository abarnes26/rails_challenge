# README

#### Overall I found this to be not as challenging after working on Job Tracker.  The biggest snags I hit during this exercise had to do with determining the appropriate pluralization of "Addresses" and how that played into setting up my migration files and relationships.  As a result, my schema isn't the cleanest.  

#### Further into the exercise, I was challenged when creating a join table between Students and Courses, mostly because when I examined it in the Rails console, "Student" had a course_id with it, but "Course" did not have a student_id.  After more experimentation, I realized that the course_id linked them both together regardless, and the student_id wasn't necessary.

#### I did find the easier parts of this very enjoyable since a week ago I would have balked at this exercise.
