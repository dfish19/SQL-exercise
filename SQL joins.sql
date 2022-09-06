/* joins: select all the computers from the products table:
using the products table and the categories table, return the product name and the category name */
select products.name, categories.name
from products
inner join categories 
on products.CategoryID = categories.CategoryID
where categories.name = "Computers";

 
/* joins: find all product names, product prices, and products ratings that have a rating of 5 */
select products.Name, products.Price, reviews.Rating
from products
inner join reviews
on products.ProductID = reviews.ProductID
where reviews.Rating = "5";
 
/* joins: find the employee with the most total quantity sold.  use the sum() function and group by */
select employees.FirstName, sum(sales.Quantity) 
from sales
left join employees
on sales.EmployeeID = employees.EmployeeID
group by employees.EmployeeID
order by sum(Quantity) desc;

/* joins: find the name of the department, and the name of the category for Appliances and Games */
select departments.name, categories.Name
from departments
inner join categories
on departments.DepartmentID = categories.DepartmentID
where categories.name = "Appliances" or categories.name = "Games";

/* joins: find the product name, total # sold, and total price sold,
 for Eagles: Hotel California --You may need to use SUM() */
 select products.Name, sum(sales.Quantity), sum(sales.Quantity * sales.PricePerUnit)
 from products
 inner join sales
 on products.ProductID = sales.ProductID
 where products.ProductID = 97;

/* joins: find Product name, reviewer name, rating, and comment on the Visio TV. (only return for the lowest rating!) */
select products.Name, reviews.Reviewer, reviews.Rating
comment from products
inner join reviews
on products.ProductID = reviews.ProductID
 where products.ProductID = 857 and reviews.Rating = 1;

-- ------------------------------------------ Extra - May be difficult
/* Your goal is to write a query that serves as an employee sales report.
This query should return:
-  the employeeID
-  the employee's first and last name
-  the name of each product
-  and how many of that product they sold */