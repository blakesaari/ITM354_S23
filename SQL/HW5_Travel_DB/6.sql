SELECT 
  Guest.guestName AS Name,
  Guest.guestAddress AS Address,
  Hotel.hotelName AS Hotel_Name,
  Room.type AS Type_of_Room,
  Room.price AS Price_of_Room
FROM 
  Booking 
  JOIN Guest ON Booking.guestNo = Guest.guestNo 
  JOIN Room ON Booking.roomNo = Room.roomNo AND Booking.hotelNo = Room.hotelNo 
  JOIN Hotel ON Hotel.hotelNo = Hotel.hotelNo 
WHERE 
  Hotel.city = 'Moscow'
ORDER BY 
  Guest.guestName ASC;