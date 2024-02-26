/*
 * List the name of all actors who have appeared in a movie that has the 'Behind the Scenes' special_feature
 */
select distinct actor.first_name || ' ' || actor.last_name as "Actor Name" 
from film
join film_actor using (film_id)
join actor using (actor_id)
join (
    select film_id, unnest(special_features)
    from film
) as t using (film_id)
where t.unnest = 'Behind the Scenes'
order by "Actor Name";
