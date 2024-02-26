/*
 * Select the title of all 'G' rated movies that have the 'Trailers' special feature.
 * Order the results alphabetically.
 *
 * HINT:
 * Use `unnest(special_features)` in a subquery.
 */
select distinct film.title
from film
join (
    select film.title, unnest(special_features)
    from film
) as t using (title)
where film.rating = 'G'
and unnest = 'Trailers'
order by title;
