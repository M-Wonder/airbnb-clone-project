/*inner join*/
SELECT 
    b.booking_id,
    b.start_date,
    b.end_date,
    b.status,
    u.user_id,
    u.name AS user_name,
    u.email AS user_email
FROM bookings b
INNER JOIN users u 
    ON b.user_id = u.user_id;


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


/*full outer join*/

