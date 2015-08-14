CREATE TABLE schools (
  name TEXT,
  rating INTEGER,
  year_established TEXT,
  id INTEGER PRIMARY KEY
);
CREATE TABLE courses(
  name TEXT,
  school_id INTEGER REFERENCES schools,
  id INTEGER PRIMARY KEY
);
CREATE TABLE students(
  name TEXT,
  age INTEGER,
  id INTEGER PRIMARY KEY
);
CREATE TABLE enrollments(
  student_id INTEGER REFERENCES students,
  course_id INTEGER REFERENCES courses,
  id INTEGER PRIMARY KEY
);
