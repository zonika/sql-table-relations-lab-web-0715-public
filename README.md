

# Sql Table Relations Lab

In this lab, we're going to work on establishing relationships between tables. You should have already read about table relations and foreign keys in the SQL Book. Let's practice making tables that are related to one another through foreign keys.

## The Domain Model

Let's create a few tables:

1. schools
2. courses
3. students

### Using Foreign Keys

One school might have one or more courses, so it's fitting to have a separate table for courses, instead of having multiple columns on the schools table for each potential course. To make the connection between a school and it's courses, we'll make a column on the courses table called `school_id`, where each record is going to point to a corresponding record in the schools table (via the foreign key `school_id` matching a school's `id`).

### Making a Join Table

Students can take multiple courses and courses can have multiple students enrolled. The way to represent this will be through a join table. Let's call it `enrollments`. Join tables are sometimes just referred to by combining the names of the two tables they're joining (so in this case, it could be `students_courses`), but we're going with `enrollments` because that just makes sense. Additionally, an enrollment is an actual object: we might add columns/attributes to the table later on.

## Todo

Let the `spec/create_spec.rb` guide you on how the tables look. Write your `CREATE` statements in `lib/create.sql`.

## Resources

* [All about Joins: the 3 Ring Binder Model](http://blog.seldomatt.com/blog/2012/10/17/about-sql-joins-the-3-ring-binder-model/)