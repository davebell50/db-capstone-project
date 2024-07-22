DELIMITER //
CREATE PROCEDURE AddBooking(IN BookingID INT, IN BookingDate DATETIME, IN TableNumber INT, IN CustomersID INT)
BEGIN
	INSERT INTO Bookings(BookingID, BookingDate, TableNumber, CustomersID) VALUES
    (BookingID, BookingDate, TableNumber, CustomersID);
    SELECT "New booking added" AS "Confirmation";
END //
DELIMITER ;

CALL AddBooking(6, "2024-07-22",4,4);



