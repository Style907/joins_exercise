SELECT * 
FROM owners 
LEFT JOIN vehicles ON owners.id = vehicles.owner_id;


SELECT first_name, last_name, COUNT(*) 
FROM owners 
JOIN vehicles ON owners.id = vehicles.owner_id 
GROUP BY first_name, last_name 
ORDER BY first_name;


SELECT first_name, last_name, CAST(AVG(price) as int) AS average_price, COUNT(*) 
FROM owners 
JOIN vehicles ON owners.id = vehicles.owner_id 
GROUP BY first_name, last_name 
HAVING AVG(price) > 10000 
ORDER BY first_name DESC;