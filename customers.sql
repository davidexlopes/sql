show databases;
use bootcampp;
show tables;

select * from customers;
describe customers;

-- Find the top 5 customers with the highest annual income and their respective occupations. 

select FirstName, AnnualIncome, Occupation from customers
order by AnnualIncome desc
limit 5;

-- Calculate the average income of customers grouped by their occupation and gender. 

select distinct Occupation, avg(AnnualIncome) as average_income, gender from customers
group by Gender, Occupation;

-- Find the customer with the maximum number of children. 

select FirstName, TotalChildren from customers
order by TotalChildren desc
limit 1;

-- List customers who have more cars than the average number of cars owned by all customers. 

-- Find customers who live in the same city as the customer with CustomerKey 12345. 

select FirstName from customers
where ï»¿CustomerKey = "12345";

-- Calculate the total annual income of customers who have at least one child living at home. 

select FirstName, AnnualIncome, TotalChildren from customers
where TotalChildren >= 1;

-- Find the top 3 occupations with the highest average annual income. 

select AnnualIncome, Occupation from customers
group by Occupation
limit 3;

-- List customers whose first name starts with 'A' and have an annual income greater than $50,000. 

select FirstName, AnnualIncome from customers
where FirstName like "A%" and AnnualIncome > 50000;

-- Find the most common occupation among customers. 

select distinct Occupation, count(Occupation) as NumberOfPeople from customers
group by Occupation;

-- Write a query that updates the email address of a customer with CustomerKey 12345 to 'newemail@example.com'. 

update customers
set EmailAddress = "newemail@example.com"
where ï»¿CustomerKey = "12345";

-- Calculate the average number of children for customers in each marital status category. 

select distinct MaritalStatus, avg(TotalChildren) as AverageChildren from customers
group by MaritalStatus;

-- Find customers who have the same occupation as the customer with CustomerKey 67890. 

select FirstName, Occupation from customers
where ï»¿CustomerKey = "12344";

-- Create a query to calculate the total number of customers with a specific education level (e.g., Bachelor's degree). 

select distinct EducationLevel, count(EducationLevel) as EduLevel from customers
where EducationLevel like "%Bachelor%"
group by EducationLevel;



