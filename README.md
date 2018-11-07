# Intro to SQL Joins

## Objectives

* Explain the order & structure of join statements
* Write basic SQL joins: `one-to-many`
  - INNER join
  - LEFT join
  - FULL OUTER join
* Write basic SQL joins that only select certain fields
  - INNER join
  - LEFT join

## Instructions

1. Create a database called joins
2. Connect to joins database using psql
3. Run joins.sql file while connected to db:
  - `\i joins.sql`

  Read up on syntax for how to execute INNER JOIN going from 'owner' to 'pet'
```sql inner join 
SELECT * FROM owner
INNER JOIN pet
ON owner.id = pet.owner_id;
```

```sql left join
SELECT * FROM owner
LEFT JOIN pet
ON owner.id = pet.owner_id;
```
follow with WHERE pet.id IS NULL to single out those nonp-matches;

``` sql full outer join
SELECT * FROM owner
FULL OUTER JOIN pet
ON owner.id = pet.owner_id;
```

```inner join specific field
SELECT pet.name, owner.name FROM owner
INNER JOIN pet
ON pet.owner_id = owner.id;

or to rename temporarily for easier read

SELECT pet.name AS pet_name, owner.name AS owner_name FROM owner
INNER JOIN pet
ON pet.owner_id = owner.id;
```

## Resources

* [Learn - Joins Syntax](https://github.com/gSchool/sql-curriculum/blob/master/Joins.md#joins---syntax)
* [Visual Representation of SQL Joins](https://www.codeproject.com/Articles/33052/Visual-Representation-of-SQL-Joins)


<!-- ///many joins -->

# SQL Joins: Many-to-Many

## Objectives

* Write many-to-many SQL joins
  - INNER JOIN all fields
  - INNER JOIN selected fields
  - INNER JOIN selected fields with aliases
* Write many-to-many SQL joins that return subsets of data
* Explain syntax and structure of many-to-many SQL joins

## Instructions

1. Create a database called many-joins
2. Connect to many-joins database using psql
3. Run joins.sql file while connected to db:
  - `\i many-joins.sql`

## Notes

* INNER JOIN all fields

SELECT * FROM author
INNER JOIN author_book

ON author.id = author_book.author_id

INNER JOIN book

ON author_book.book_id = book.id

* INNER JOIN selected fields
  - author name
  - author email
  - book title

  SELECT author.name, author.email, book.title FROM author
  INNER JOIN author_book

  ON author.id = author_book.author_id

  INNER JOIN book

  ON author_book.book_id = book.id;

* INNER JOIN selected fields with aliases
  - author id (aliased)
  - author name
  - book id (aliased)
  - book title

  SELECT author.id AS author_id, author.name, book.id AS book_id, book.title FROM author
  INNER JOIN author_book

  ON author.id = author_book.author_id

  INNER JOIN book

  ON author_book.book_id = book.id;

* INNER JOIN subset of data
  - All fields for 'Mark' and his book(s)

  SELECT * FROM author
  INNER JOIN author_book
  ON author.id = author_book.author_id
  INNER JOIN book
  ON book.id = author_book.book_id
  WHERE author.id = 2;

* INNER JOIN subset of data
  - All fields for 'Modern Romance' and its author(s)

  SELECT * FROM author
  INNER JOIN author_book
  ON author.id = author_book.author_id
  INNER JOIN book
  ON book.id = author_book.book_id
  WHERE book_id = 4;