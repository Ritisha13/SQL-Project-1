--Q1: Who is the senior-most employee based on job title?

select * from employee
order by levels desc
limit 1;

--Q2: Which countries have the most Invoices?

select COUNT(*) as c, billing_country
from invoice
group by billing_country
order by c desc;

--Q3: What are top 3 values of total invoice?

SELECT total FROM invoice
order by total desc
limit 3;

--Q4: Which city has the highest sum of invoice totals? 
--Please return both the "city name" and "invoice totals".

select SUM(total) as c, billing_city
from invoice
group by billing_city
order by c desc
limit 1;

--Q5: Which customer has spent the most money?

select customer.customer_id, customer.first_name, customer.last_name, SUM (invoice.total) as total 
from customer
join invoice ON customer.customer_id = invoice.customer_id
group by customer.customer_id
order by total desc
limit 1;


