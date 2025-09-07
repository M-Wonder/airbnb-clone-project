EXPLAIN ANALYZE
SELECT u.user_id, COUNT(b.booking_id)
FROM users u
LEFT JOIN bookings b ON u.user_id = b.user_id
GROUP BY u.user_id;

SHOW PROFILE; -- (MySQL)
