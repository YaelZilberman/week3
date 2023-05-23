use sakila;
select * from actor where last_name = 'Johansson';
select * from actor where first_name = 'Scarlett';
select rental_duration from film order by rental_duration desc limit 1; -- the largest rental duration is 7 days
select rental_duration from film order by rental_duration asc limit 1; -- the shortest rental duration is 3 days
select title, length as max_duration from film order by length desc limit 1; -- the longest film is chicago north
select title, length as min_duration from film order by length asc limit 1; -- the shortest film is alien center
select round(avg(length), 0) as length_avg from film; -- the average movie duration is 115 minutes
select concat(floor(avg(length) / 60), ' hours ', avg(length) % 60, ' minutes ') as length_hours_minutes from film; -- 1 hour and 55 minutes
select title, concat((floor(length) / 60), ' hours ', (length) % 60, ' minutes ') as duration from film where length > 180; -- aca pongo 180 porque originalmente esta guardado en minutos
select * from customer;
select concat(first_name, ' ',last_name,' - ',email) as customername_email from customer;
select title, length from film where title like 'Chicago North'; -- the length of chicago north is 185 minutes.