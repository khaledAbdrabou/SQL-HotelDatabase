-- How many unique guests have made bookings for a particular month?
	SELECT guest_first_name, guest_last_name,guest_contact_number
	FROM guests
	WHERE guest_id IN 
		( SELECT distinct guests_guest_id 		-- get unique guests
		  FROM reservation
		  WHERE MONTH(check_in_date) = 6);		-- bookings for the month of june