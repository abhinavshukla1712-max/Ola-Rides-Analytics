USE Ola;

#1. Retrieve all successful bookings
CREATE VIEW Successful_Bookings AS
select * FROM ola_rides
WHERE Booking_Status = 'Success';

#1. Retrieve all successful bookings
SELECT * From Successful_Bookings;

#2. Find the average ride distance for each vehicle type
create VIEW average_ride_distance_for_each_vehicle AS
select Vehicle_Type, avg(Ride_Distance)
as avg_distance FROM ola_rides
group by Vehicle_Type;

#2. Find the average ride distance for each vehicle type
SELECT * FROM average_ride_distance_for_each_vehicle;

#3. Get the total number of cancelled rides by customers
create VIEW cancelled_rides_by_customers AS
SELECT COUNT(*) FROM ola_rides 
WHERE Booking_Status = 'Canceled by Customer';

#3. Get the total number of cancelled rides by customers
select * FROM cancelled_rides_by_customers;

#4. List the top 5 customers who booked the highest number of rides
CREATE VIEW Top_5_Customers AS
SELECT Customer_ID, COUNT(Booking_ID) as total_rides
FROM ola_rides
GROUP BY Customer_ID
ORDER BY total_rides DESC LIMIT 5;

#4. List the top 5 customers who booked the highest number of rides
select * FROM Top_5_Customers;

#5. Get the number of rides cancelled by drivers due to personal and car-related issues
create view Rides_Cancelled_by_Drivers_P_C_issues as
SELECT COUNT(*) FROM ola_rides
WHERE Canceled_Rides_by_Driver = 'Personal & Car related issue';



#6. Find the maximum and minimum driver ratings for Prime Sedan bookings
create VIEW Max_Min_Driver_Rating as
SELECT 
    MAX(Driver_Ratings) AS max_rating,
    MIN(Driver_Ratings) AS min_rating
FROM ola_rides
WHERE Vehicle_Type = 'Prime Sedan';

#6. Find the maximum and minimum driver ratings for Prime Sedan bookings
SELECT * FROM Max_Min_Driver_Rating;

#7. Retrieve all rides where payment was made using UPI
CREATE VIEW UPI_Payments as
SELECT * FROM ola_rides
WHERE Payment_Method = 'UPI';

#8. Find the average customer rating per vehicle type
CREATE VIEW AVG_Cust_Rating as
SELECT Vehicle_Type, avg(Customer_Rating) as avg_customer_rating
FROM ola_rides
group by Vehicle_Type;

#9. Calculate the total booking value of rides completed successfully
CREATE VIEW total_booking_value_of_rides_value as
SELECT SUM(Booking_Value) as total_successful_value
FROM ola_rides
WHERE Booking_Status = 'Success';

#10. List all incomplete rides along with the reason
CREATE VIEW Incomplete_Rides_Reason AS
SELECT Booking_ID, Incomplete_Rides_Reason
FROM ola_rides
WHERE Incomplete_Rides = 'Yes';


#1. Retrieve all successful bookings:
SELECT * FROM ola_rides WHERE Booking_Status = 'Success';

#2. Find the average ride distance for each vehicle type:
SELECT Vehicle_Type, AVG(Ride_Distance) as avg_distance FROM ola_rides GROUP BY
Vehicle_Type;

#3. Get the total number of cancelled rides by customers:
SELECT COUNT(*) FROM ola_rides WHERE Booking_Status = 'cancelled by Customer';

#4. List the top 5 customers who booked the highest number of rides:
SELECT Customer_ID, COUNT(Booking_ID) as total_rides FROM ola_rides GROUP BY
Customer_ID ORDER BY total_rides DESC LIMIT 5;

#5. Get the number of rides cancelled by drivers due to personal and car-related issues:
SELECT * FROM Rides_Cancelled_by_Drivers_P_C_issues;

#6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
SELECT MAX(Driver_Ratings) as max_rating, MIN(Driver_Ratings) as min_rating FROM
ola_rides WHERE Vehicle_Type = 'Prime Sedan';

#7. Retrieve all rides where payment was made using UPI:
SELECT * FROM ola_rides WHERE Payment_Method = 'UPI';

#8. Find the average customer rating per vehicle type:
SELECT Vehicle_Type, AVG(Customer_Rating) as avg_customer_rating FROM ola_rides
GROUP BY Vehicle_Type;

#9. Calculate the total booking value of rides completed successfully:
SELECT SUM(Booking_Value) as total_successful_value FROM ola_rides WHERE
Booking_Status = 'Success';

#10. List all incomplete rides along with the reason:
SELECT Booking_ID, Incomplete_Rides_Reason FROM ola_rides WHERE Incomplete_Rides =
'Yes';






