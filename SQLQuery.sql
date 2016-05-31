SELECT * FROM tblGuests ORDER BY CheckinDate;

SELECT * FROM tblAppointments;

SELECT tblAppointments.AppointmentID, tblAppointments.GuestID, tblGuests.Fname, 
tblGuests.LName, tblAppointments.DateOfService, tblAppointments.StartingTime,
tblAppointments.EndingTime, tblAppointments.ServiceID,tblServices.ServiceName, 
tblAppointments.Price
FROM tblGuests 
RIGHT JOIN tblAppointments  ON tblGuests.GuestID = tblAppointments.GuestID
LEFT JOIN tblServices ON tblAppointments.ServiceID = tblServices.ServiceID;

SELECT * FROM tblServices;

SELECT * FROM tblServiceTypes;

-----------------------------------------

DELETE FROM tblAppointments WHERE GuestID = 1000;
DELETE FROM tblGuests WHERE FName='Bruno';

UPDATE tblGuests SET CheckinDate = '12-21-15', CheckinTime = '12:00', 
CheckoutDate = '12-26-2015', CheckoutTime = '14:00' WHERE GuestID = 21013;


