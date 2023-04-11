SELECT Hotel.hotelName, Booking.roomNo, Room.type, Booking.dateFrom, Booking.dateTo
FROM Hotel
JOIN Room ON Hotel.hotelNo = Room.hotelNo
JOIN Booking ON Room.roomNo = Booking.roomNo AND Hotel.hotelNo = Booking.hotelNo
WHERE Hotel.hotelNo = 39
ORDER BY Booking.dateFrom;