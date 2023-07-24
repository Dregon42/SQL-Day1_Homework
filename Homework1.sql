-- 1. How many actors are ther with the last name "Wahlberg"?  
select last_name, count(last_name) 
from actor
where last_name like 'Wahlberg'
group by last_name;

-- A: 2


-- 2. How many payments were made between $3.99 and $5.99? 
select count(amount) 
from payment 
where amount between 3.99 and 5.99;

-- A:  2


-- 3. What flim does the store have most of? 
select * from inventory;

select film_id, count(inventory_id)
from inventory 
group by film_id;

-- A: The store has many movies with a max of 8 copies


-- 4. How many customers have the last name 'Williams'? 
select count(customer_id) 
from customer 
where last_name like 'Williams';

-- A:  1 customers with last name 'Williams'


-- 5. What store employee (get the id) sold the most rentals?  
select * from rental 

select staff_id, count(rental_id)
from rental
group by staff_id;

-- A: Mike



-- 6. How many different district names are there? 
select count(distinct district) 
from address 

-- A: 378


-- 7. What film has  the most actors in it? (use film_actor table to get film_id) 
select * from film_actor

select film_id, count(distinct actor_id)
from film_actor 
group by film_id 
order by count(distinct actor_id) desc;

-- "Lambs Cincinatti"



-- 8. From store_id 1, how many customers have a last name ending with 'es'?  
--    (use customer table) 
select store_id, count(customer_id)
from customer 
where last_name like '__%es'
group by store_id 

-- A: 13


-- 9. How many payment amounts (4.99, 5.99, etc.) had a nummber of rentals  
--    above 250 for customers with ids between 380 and 430? (use group by and having > 250)  
select * from payment p 
select amount, count(payment_id)
from payment
where customer_id between 380 and 430
group by amount 
having count(payment_id) > 250 

-- A: 3 payment amounts


-- 10. Within the film table, how many rating categories are there? And what rating has the most movies total?
select * from film 

select rating, count(rating)
from film 
group by rating

-- A: There are 5 rating categories and the "PG-13" rating has the most movies at 223.
