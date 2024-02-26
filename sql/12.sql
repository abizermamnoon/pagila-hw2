/*
 * List the title of all movies that have both the 'Behind the Scenes' and the 'Trailers' special_feature
 *
 * HINT:
 * Create a select statement that lists the titles of all tables with the 'Behind the Scenes' special_feature.
 * Create a select statement that lists the titles of all tables with the 'Trailers' special_feature.
 * Inner join the queries above.
 */
select film.title
from film
join (
    select title, unnest(special_features)
    from film
) as t using (title)
join (
    select title, unnest(special_features)
    from film
) as h using (title)
where t.unnest = 'Trailers'
and h.unnest = 'Behind the Scenes'
order by film.title;

