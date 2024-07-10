/*1*/
SELECT COUNT(*) AS 'Total Number of Reservations'
FROM [Hotel Reservation Dataset];

/*2*/
SELECT TOP 1 type_of_meal_plan AS 'Meal Type', 
	COUNT(*) AS Meal_Plan_Reservations
FROM [Hotel Reservation Dataset]
GROUP BY type_of_meal_plan
ORDER BY Meal_Plan_Reservations DESC;

/*3*/
SELECT AVG(avg_price_per_room) AS 'Average Price Per Room with Children'
FROM [Hotel Reservation Dataset]
WHERE no_of_children > 0;

/*4*/
SELECT COUNT(*) AS 'Number of Reservations in 2018'
FROM [Hotel Reservation Dataset]
WHERE YEAR(arrival_date) = '2018';

/*5*/
SELECT TOP 1 room_type_reserved AS 'Room Type', COUNT(*) AS 'No. of Reservations'
FROM [Hotel Reservation Dataset]
GROUP BY room_type_reserved
ORDER BY 'No. of Reservations' DESC;

/*6*/
SELECT COUNT(*) AS 'Weekend Reservations'
FROM [Hotel Reservation Dataset]
WHERE no_of_weekend_nights > 0;

/*7*/
SELECT MAX(lead_time) AS 'Highest Reservation Time Lead'
, MIN(lead_time) AS 'Lowest Reservation Time Lead'
FROM [Hotel Reservation Dataset]

/*8*/
SELECT TOP 1 market_segment_type AS 'Segement Type', 
COUNT(*) AS 'No. of Reservations'
FROM [Hotel Reservation Dataset]
GROUP BY market_segment_type
ORDER BY 'No. of Reservations' DESC;

/*9*/
SELECT COUNT(*) AS 'Confirmed Reservations'
FROM [Hotel Reservation Dataset]
WHERE booking_status = 'Confirmed';

/*10*/
SELECT SUM(no_of_adults) + SUM(no_of_children) AS 'Total No. of People'
FROM [Hotel Reservation Dataset];

/*11*/
SELECT AVG(no_of_weekend_nights) AS 'Average no. of weekend nights involving children'
FROM [Hotel Reservation Dataset]
WHERE no_of_children > 0;

/*12*/
SELECT MONTH(arrival_date) AS 'Month Number', 
COUNT(*) AS 'No. of reservations'
FROM [Hotel Reservation Dataset]
GROUP BY MONTH(arrival_date);

/*13*/
SELECT room_type_reserved AS 'Room Type', 
AVG(no_of_week_nights + no_of_weekend_nights) AS 'Average No. of Nights'
FROM [Hotel Reservation Dataset]
GROUP BY room_type_reserved;

/*14*/
SELECT TOP 1 room_type_reserved, 
AVG(avg_price_per_room) AS 'Average Price', 
COUNT(*) AS 'No. of reservations'
FROM [Hotel Reservation Dataset]
WHERE no_of_children > 0
GROUP BY room_type_reserved
ORDER BY 'No. of reservations' DESC;

/*15*/
SELECT market_segment_type
FROM [Hotel Reservation Dataset]
WHERE avg_price_per_room = (SELECT MAX(avg_price_per_room)
							FROM [Hotel Reservation Dataset]);