
### CRUD, or Create, Read Update and Delete operations

### Database Design

**What are constraints?**

In the relational model, every relation needs to meet three conditions. These three conditions must be met for a relation to be valid. They are called relational integrity constraints and they are: 

- Key constraints 
- Domain constraints 
- Referential integrity constraints 

**Database Normalizations**

### SQL Server Query Performance Guidelines

#### Query writing
- How Join Order Can Affect the Query Plan
  - As a best practice you should try to order your table join so the join that reduces the result set the most is joined first.
- Remove Function Calls From the SELECT List
- Avoid Using <> in WHERE Clause
  - It's always best to use an equality operator, like = or IN, in you query if you want the best performance possible.
- Avoid Using Functions in WHERE Clause
- Avoid Using Wildcard Characters to Start Search Criteria
  - When using the LIKE operator and having the first character in your search string a wildcard character, either % or _, the SQL Optimizer will be forced to do a table/index scan when executing your query.
- Use a Derived Table in Place of IN Predicate With Aggregate Functions
  - Using a derived table in place of the IN predicate when we are aggregating data allows us to only have to process certain table records once therefore reducing the amount of resources required to execute a query.

#### Indexing
- Make Sure All JOIN Columns are Indexed
- Use WHERE, JOIN, ORDER BY, SELECT Column Order When Creating Indexes
- Make Sure All Tables Have a Clustered Index Defined

#### Schema design
- Use DELETE CASCADE Option to Handle Child Key Removal in Foreign Key Relationships
- Denormalize For Performance


### Tips for SQL Performance Optimization

1. Inquire SQL try not to use select *, but specific fields;
2. Use numeric values instead of character strings as much as possible;
3. Use varchar instead of char;
4. Avoid using the where clause with != or <> operator;
   - In almost all cases when we use the <> operator index seeks will not be performed and instead a table/index scan is required.
5. Improve the effiency of group by;
   - To improve queries with GROUP BY, group inside a common table expression (CTE) with only the required columns in the grouping. For example, IDs or columns covered by indexes. Then, join the CTE with the right tables to find other columns.
6. Not too many table joins, not too many indexes, generally within 5;
