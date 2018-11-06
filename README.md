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

## Resources

* [Learn - Joins Syntax](https://github.com/gSchool/sql-curriculum/blob/master/Joins.md#joins---syntax)
* [Visual Representation of SQL Joins](https://www.codeproject.com/Articles/33052/Visual-Representation-of-SQL-Joins)
