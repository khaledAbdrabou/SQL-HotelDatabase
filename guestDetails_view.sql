-- create view to get details of the guests
CREATE OR REPLACE VIEW guest_view AS
SELECT guest_first_name AS 'First Name', guest_last_name AS 'Last Name', guest_email_address AS 'Email Address', guest_contact_number AS 'Contact Number', guest_id_proof AS 'Guest EID'
FROM guests
WHERE guests.guest_id IN
		(SELECT distinct guests_guest_id 		-- get distinct guests
		FROM reservation
		WHERE hotel_hotel_id = 1);				-- for hotel with id 1 

		