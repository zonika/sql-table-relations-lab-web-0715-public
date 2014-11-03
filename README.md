---
tags: sql, joins, foreign keys, introductory, micro
languages: sql
resources: 1
---

# Sql Table Relations Lab

In this lab, we're going to work on establishing relationships between tables. You should have already read about table relations and foreign keys in the SQL Book. Let's practice making tables that are related to one another through foreign keys.

## The Domain Model

Let's create a few tables:

1. schools
2. subjects
3. students

One school might have one or more subjects, so it's fitting to have a separate table for subjects, instead of having multiple columns on the schools table for each potential subject.

## Todo

Let the `create_spec.rb` guide you on how the tables look.

## Resources

* [All about Joins: the 3 Ring Binder Model](http://blog.seldomatt.com/blog/2012/10/17/about-sql-joins-the-3-ring-binder-model/)