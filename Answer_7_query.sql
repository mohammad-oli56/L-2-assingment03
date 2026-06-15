-- question 1 answer 
SELECT 
    match_id,
    fixture,
    ROUND(base_ticket_price) AS base_ticket_price
FROM Matches
WHERE tournament_category = 'Champions League'
  AND match_status = 'Available';




-- question 2 answer 
SELECT user_id,full_name,email FROM users 
WHERE full_name ILIKE 'Tanvir%' 
   OR full_name ILIKE '%Haque%';




-- question 3 answer
select booking_id,user_id,match_id, COALESCE(payment_status, 'Action Required') AS systematic_status
  from bookings where payment_status is null 





-- question 4 answer 
SELECT 
    b.booking_id,
    u.full_name,
    m.fixture,
   round(b.total_cost) as total_cost
FROM bookings AS b
JOIN users AS u 
    ON b.user_id = u.user_id
JOIN matches AS m 
    ON b.match_id = m.match_id;




-- question 5 answer 
SELECT 
    u.user_id,
    u.full_name,
    b.booking_id
FROM users AS u
LEFT JOIN bookings AS b 
    ON u.user_id = b.user_id;




-- question 6 answer
SELECT 
    booking_id,
    match_id,
    round(total_cost) as total_cost
FROM bookings
WHERE total_cost > (
    SELECT AVG(total_cost)
    FROM bookings
);




-- question 7 answer
SELECT 
    match_id,
    fixture,
    round(base_ticket_price) as base_ticket_price
FROM Matches
ORDER BY base_ticket_price DESC
OFFSET 1
LIMIT 2;




