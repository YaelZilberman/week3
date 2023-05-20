USE sakila;
SELECT * from actor;
select title from film;
select distinct(original_language_id) as language from film;
select count(store_id) from store;
select count(staff_id) from staff;
select first_name from staff;