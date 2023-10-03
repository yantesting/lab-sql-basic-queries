# Use the sakila database to do the following tasks:

#  Show all tables.
show tables;


  
# Retrieve all the data from the tables actor, film and customer.

select * from actor;
select * from film;
select * from customer;


  #  Retrieve the following columns from their respective tables:
       # 3.1 Titles of all films from the film table
select title, original_language_id from film;
 select title, language_id from film; 

     
       #  3.2. List of languages used in films, with the column aliased as language from the language table
   #     3rental.3 List of first names of all employees from the staff table
select first_name from staff;
  # Retrieve unique release years.
select distinct release_year from film;
    # Counting records for database insights:
select * from store;
select count(store_id) from staff;
 
       # 5.1 Determine the number of stores that the company has.
       
     #  5.2 Determine the number of employees that the company has.
       select count(staff_id) from rental;
     # 5.3 Determine how many films are available for rent and how many have been rented.
       select count(1) from inventory;
       select *, "apple" from rental;
       select count(*) from rental;
       
      # 5.4 Determine the number of distinct last names of the actors in the database.
select count(distinct last_name), count(*)  from actor;  # 121 
 #   Retrieve the 10 longest films.
select * 
from film
order by length desc
limit 10;
  # Use filtering techniques in order to:

    #    7.1 Retrieve all actors with the first name "SCARLETT".
select * from actor where first_name like "SCARLETT"; # 



  #      7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.
   #         Hint: use LIKE operator. More information here.

select title , length
 from film
 where title like "%ARMAGEDDON%" 
 and length > 100  ; 

      # 7.3 Determine the number of films that include Behind the Scenes content
	select count(1)
    from film
    where special_features like "%Behind the Scenes%";
    
    