DELIMITER //

CREATE PROCEDURE AddValidBooking(
    IN Booking_Date DATETIME,
    IN Table_Number INT
)
BEGIN
    DECLARE bookingExists INT DEFAULT 0;
    
    START TRANSACTION;

# Inserting reservation into booking table 
    SELECT COUNT(*) INTO bookingExists
    FROM Bookings
    WHERE BookingDate = Booking_Date AND TableNumber = Table_Number;
    
# Table is booked
    IF bookingExists > 0 THEN
        ROLLBACK;
        SELECT CONCAT('Table ', Table_Number, ' is already booked - booking cancelled') AS "Booking Status";
        
# Table is Free
    ELSE
        INSERT INTO Bookings (BookingDate, TableNumber)
        VALUES (Booking_Date, Table_Number);
        COMMIT;
        SELECT 'Booking successful' AS "Booking Status";
    END IF;
END//

DELIMITER ;

CALL AddValidBooking("2024-07-01", 3);