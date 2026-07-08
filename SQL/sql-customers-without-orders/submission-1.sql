-- Write your query below
select c.name from customers c
left join orders o ON c.id = o.customer_id 
where c.id NOT IN(select distinct customer_id from orders)
