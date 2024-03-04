1. What is PostgreSQL?

   Ans: PostgreSQL is an open source realational database management system (RDBMS).
   It is widely use for it's various features such security, scalability, durability and many more. It goes welly with small-scale projects to large-scale project.

2. What is the purpose of a database schema in PostgreSQL?

   Ans: Schema used for various purpose in postgreSQL like organizing database object (table, view, indexes etc), managing database efficiently, securing database by role base permission, and schema let mantain versioning and migration by creating different shcema for different version.

3. Explain the primary key and foreign key concepts.

   Ans: Primary key and foreign key are both crucial term in Relational Database Management System. Those key connects two table and sustain the database integrity. Primary key is the unique identifier of a table column. On the other hand, foreign key is also a primary key but when it used another table it calls as foreign key and connect the table.

4. What is the difference between the VARCHAR and CHAR data types?

   Ans: VARCHAR and CHAR are both data types for inserting character data in table. VARCHAR data type use to stor character value which length is not fixed. In contrast, CHAR used where column value has fixed length.

5. Explain the purpose of the WHERE clause in a SELECT statement.

   Ans: In SQL query, WHERE clause use in SELECT statement to retrieve row based on specific condition. The WHERE clause supports various comparison operator such as =, !=, >, <, >=, <= and logical operator AND, OR, NOT.

6. What are the LIMIT and OFFSET clauses used for?

   Ans: LIMIT and OFFSET clasuses used in SQL table where LIMIT define the number of rows retrieve in a table and OFFSET define number of rows need to skip from the beginning. Those clause used to implement pagination behaviour in an application.

7. How can you perform data modification using UPDATE statements?

   Ans: "UPDATE" clause use to modify data. Here below example shown to update a column value.

   ```
   UPDATE table_name
   SET
   column1 = updated_value,
   column2 = update_value
   ... = ...
   WHERE condition;
   ```

8. What is the significance of the JOIN operation, and how does it work in PostgreSQL?

   Ans: JOIN operation is used to combine rows with two or more table based on their ralation. There are five types of JOIN operation.
   (i) INNER JOIN or JOIN Operation
   (ii) Left JOIN or LEFT OUTER JOIN Operation
   (iii) Right JOIN or RIGHT OUTER JOIN Operation
   (iv) Full JOIN or FULL OUTER JOIN Operation
   (v) CROSS JOIN Operation
   example below shows how JOIN operation used in sql.

   ```
   SELECT * FROM table_name1
   JOIN table_name2 ON table_name1.column = table_name2.column;
   ```

9. Explain the GROUP BY clause and its role in aggregation operations.

   Ans: GROUP BY clause used to group rows based on similar value in a table. This clause typically use for aggregation purposes.

10. How can you calculate aggregate functions like COUNT, SUM, and AVG in PostgreSQL?

    Ans: To calculate aggregate function like COUNT, SUM, and AVG in postgreSQL below shown.
    Count:

    ```
    SELECT COUNT(column_name) FROM table_name WHERE condition;
    ```

    SUM:

    ```
    SELECT SUM(column_name) FROM table_name;
    ```

    AVG:

    ```
    SELECT AVG(column_name) FROM table_name;
    ```

11. What is the purpose of an index in PostgreSQL, and how does it optimize query  
     performance?

    Ans: Index is database object that lets to retrieve data faster to query/searches.
    Index optimize query by locating column names with it's underhood algorithm. There are total five types of algorithm that makes the query faster. Those are,
    (i) B-tree Index,
    (ii) Hash Index,
    (iii) GiST Index,
    (iv) GIN,
    (v) BRIN,

12. Explain the concept of a PostgreSQL view and how it differs from a table.

    Ans: VIEW is the virtual representaion of data while table is the actual data store.
    VIEW dose not store any data but we can reuse by implementing query with that. On the other hand table store real data with column and rows. We can modify data in table but mostly it's not possible with VIEW.
