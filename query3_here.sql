-- How many rooms are available in a given hotel?
	SELECT  h.hotel_room_count - SUM(r.total_rooms_booked) 	AS 'Available Rooms'	-- get available rooms
	FROM `reservation` r JOIN hotel h
    	ON r.hotel_hotel_id = h.hotel_id
	WHERE reservation_date LIKE '2018-08-10%' AND hotel_hotel_id = 1	-- for given date and for hotel id = 1 