/* joins: select all the computers from the products table:
using the products table and the categories table, return the product name and the category name */
 Select products.Name as Product, categories.Name as Category
 From products
 Inner Join Categories
 On products.CategoryID = categories.CategoryID
 where categories.Name = "Computers";
/* joins: find all product names, product prices, and products ratings that have a rating of 5 */
select p.Name as Product, p.Price, r.Rating
From products as p
Inner Join reviews as r
On r.ProductID = p.ProductsID
Where r.Rating =5;
/* joins: find the employee with the most total quantity sold.  use the sum() function and group by */
Select e.EmployeeID, concat(e.FirstName, " " e.LastName), as Employee, sum(s.Quantity as) as Sales
From sales as s
Inner Join Employees as e
On e.EmployeeID = s.EmployeeID
Group By s.EmployeeID
Having Sales = (Select Sum(sales.Quantity) as TOP FROM sales GROUP BY sales.EmployeeID ORDER BY TOP DESC LIMIT 1)
ORDER BY Sales DESC

/* joins: find the name of the department, and the name of the category for Appliances and Games */
Select d.Name as Depatyment, C.Names as Catergory
From categories as c
INNER Join department as d
ON d.DepartmentID = c.DepartmentID
Where c.Name = "Appliances" OR c.Name = "Games";


/* joins: find the product name, total # sold, and total price sold,
 for Eagles: Hotel California --You may need to use SUM() */
 Select p.Name as Product, Sum(s.Quanity) as Sold, sum(s.PricePerUnit * s.Quanity) as Gross
 From Sales as s
 INNER Join products as p
 ON s.ProductID = p.ProductID
 WHERE p.Name = "Eagles: Hotel California"

/* joins: find Product name, reviewer name, rating, and comment on the Visio TV. (only return for the lowest rating!) */
SELECT p.Name as reviews.Reviewer, reviews.Rating, review.Comment
From reviews
INNER JOIN products
ON products.ProductID = reviews.productID
Where product.Name = "Vizio TV" AND reviews.rating =1;


/* Your goal is to write a query that serves as an employee sales report.
This query should return the employeeID, the employee's first and last name, the name of each product, how many of that product they sold */


