
SELECT b.booking_id, b.start_date, b.end_date, b.status,
       u.name AS user_name, u.email,
       p.title AS property_title, p.location,
       pay.amount, pay.status AS payment_status
FROM bookings b
JOIN users u ON b.user_id = u.user_id
JOIN properties p ON b.property_id = p.property_id
LEFT JOIN payments pay ON b.booking_id = pay.booking_id;

EXPLAIN ANALYZE SELECT ...

  SELECT b.booking_id, b.start_date, b.end_date, b.status,
       u.name AS user_name,
       p.title AS property_title,
       pay.amount
FROM bookings b
JOIN users u ON b.user_id = u.user_id
JOIN properties p ON b.property_id = p.property_id
LEFT JOIN payments pay ON b.booking_id = pay.booking_id
WHERE b.status = 'confirmed';
