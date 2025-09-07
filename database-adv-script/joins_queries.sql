


/*left join*/
SELECT 
    p.property_id,
    p.title,
    p.location,
    r.review_id,
    r.rating,
    r.comment,
    r.review_date
FROM properties p
LEFT JOIN reviews r 
    ON p.property_id = r.property_id;
