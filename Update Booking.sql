DELIMITER //

CREATE PROCEDURE UpdateBooking(IN Booking_ID INT, IN Booking_Date DATETIME)
BEGIN
UPDATE Bookings SET BookingDate = Booking_Date
WHERE BookingID = Booking_ID;
SELECT CONCAT("Booking ", Booking_ID, " updated") AS "Confirmation";
END //
DELIMITER ;

CALL UpdateBooking(6, "2024-07-27")



