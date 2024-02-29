--- 1) Calculate the total sales that happened on december 2nd, 2021


select sum(price) 
from bill 
natural join customer where dining_date = '2021-12-02'


--- 2) Find the Number of customers each waiter attended to on december 2nd, 2021

select w.waiter_name, count(at2.customer_id) 
from waiter w, customer c, attends_to at2 where c.customer_id = at2.customer_id and at2.waiter_id = w.waiter_id
group by at2.waiter_id,c.dining_date, w.waiter_name having dining_date = '2021-12-02' 
 
--- 3) Find the manager names starting with A or B listed in order

select manager_name 
from manager 
where manager_name like 'A%' or manager_name like 'B%'
order by manager_name 


--- 4) Count the number of people that have a reservation and paid with cash 

select count(c.customer_id)
from customer c natural join bill b where has_reservation = 'yes' and payment_method = 'cash'


--- 5) Find the customers who order the most food when they come from highest to lowest 

select c.customer_name,  c.customer_id , sum(o.quantity_ordered) as QuantityOrdered
from customer c natural join orders o 
group by c.customer_id
order by QuantityOrdered desc



