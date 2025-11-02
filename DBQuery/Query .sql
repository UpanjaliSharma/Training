-- Insert a new customer
INSERT INTO customer (customer_name, customer_phone, customer_email, customer_password, created_at)
VALUES ('Ravi Sharma', '9876543210', 'ravi@example.com', 'ravi@123', NOW());

-- Insert a new driver
INSERT INTO driver (vehicle_id, driver_name, driver_phone, driver_email, driver_password, created_at)
VALUES (101, 'Amit Singh', '9998887776', 'amit@example.com', 'amit@123', NOW());

-- Insert a new booking
INSERT INTO booking (customer_id, booking_date_time, source_ride, destination_ride, status, driver_id)
VALUES (1, '2025-11-02 09:30:00', 'Aligarh', 'Delhi', 'Pending', 1);



-- View all customers
SELECT * FROM customer;

-- View all drivers
SELECT * FROM driver;

-- View all bookings
SELECT * FROM booking;



-- Get all bookings with customer and driver details
SELECT 
    b.booking_id,
    c.customer_name,
    d.driver_name,
    b.source_ride,
    b.destination_ride,
    b.status,
    b.booking_date_time
FROM booking b
LEFT JOIN customer c ON b.customer_id = c.customer_id
LEFT JOIN driver d ON b.driver_id = d.driver_id;



-- Update booking status
UPDATE booking 
SET status = 'Completed', updated_at = NOW()
WHERE booking_id = 1;

-- Update driver phone number
UPDATE driver 
SET driver_phone = '8887776665', updated_at = NOW()
WHERE driver_id = 1;
