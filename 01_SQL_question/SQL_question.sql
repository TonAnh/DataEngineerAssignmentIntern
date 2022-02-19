/* QUESTION 1
Assume that we have a table storing scores of athletes in
a competition:
Performance(AthleteId, Gender, Country, Score)
Write an SQL to find the second highest score of athletes
 */

 
 SELECT MAX(Score) 
 FROM Performance
 WHERE Score NOT IN(SELECT MAX(Score)
					FROM Performance);

/* QUESTION 2
Assume that we have Customers(id, name) 
and Orders(id, customerId) tables
Write an SQL query to report all customers who never
order anything
*/

SELECT Customers.name
FROM Customers
WHERE Customers.id NOT IN (SELECT customerId
							FROM Orders);

/* QUESTION 3
Assume that we have Employee(id, name, salary, departmentId)
and Department(id, name). A company's executives are 
interested in seeing who earns the most money in each of the
company's departments. A high earner in a department is an
employee who has a salary in the top three unique salaries 
for that department.

Write an SQL query to find the employees who are high earners
in each of the departments 
*/



