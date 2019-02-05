/**
 *Question 1
 */
Select 
first_name,
last_name
from actor
where first_name = 'PENELOPE';

/**
 *Question 2
 */
 Select
a.first_name,
a.last_name,
z.title
from actor as a
join film_actor as f on a.actor_id = f.actor_id
join film as z on f.film_id = z.film_id
where z.title = 'ZOOLANDER FICTION';

/**
*Question 3
*/
select 
m.title
from actor as a
join film_actor as f on a.actor_id = f.actor_id
join film as m on f.film_id = m.film_id
where a.first_name = 'JENNIFER' and a.last_name = 'DAVIS';

/**
*Question 4
*/
Select film.title
from customer
join rental on customer.customer_id = rental.customer_id
join inventory on rental.inventory_id = inventory.inventory_id
join film on inventory.film_id = film.film_id
where customer.customer_id = 11
and rental.return_date is null; 


/**
*Question 5
*/
Select
f.title
from film as f
join film_category as fc on f.film_id = fc.film_id
join category as c on fc.category_id = c.category_id
where c.name = 'Animation';

/**
*Question 6
*/
select 
f.rental_rate
from film as f
join inventory as i on f.film_id = i.film_id
join rental as r on i.inventory_id = r.inventory_id
join customer as c on r.customer_id = c.customer_id
where c.customer_id = 95 and f.title = 'Closer Bang';

/**
*Question 7
*/ 
select 
staff.first_name,
staff.last_name
from staff
join payment on staff.staff_id = payment.staff_id
join customer on payment.customer_id = customer.customer_id
join rental on payment.rental_id = rental.rental_id
join inventory on rental.inventory_id = inventory.inventory_id
join film on inventory.film_id = film.film_id
where customer.first_name = 'Marie' and customer.last_name = 'Turner'
and film.title = 'CHAINSAW UPTOWN';
