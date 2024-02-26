/*
 * Count the number of movies that contain each type of special feature.
 * Order the results alphabetically be the special_feature.
 */
select t.special_features, count(film.title)
from film
join (
    select film.title, unnest(special_features) as special_features
    from film
) as t using (title)
group by t.special_features
order by t.special_features;

