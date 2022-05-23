SET GLOBAL FOREIGN_KEY_CHECKS=0;
INSERT INTO `hotel`(`hotel_id`, `hotel_name`, `hotel_contact_number`, `hotel_email_address`, `hotel_website`, `hotel_floor_count`, `hotel_room_count`, `hotel_chain_id`, `addresses_address_id`, `star_ratings_star_rating_id`)
	VALUES 
		(1,'King George Inn & Suites','604-502-9564','kgi123@gmail.com','https://www.kgi123.com/',5,45,1,7,4),
		(2,'Copper Hills Inn','547-964-9564','chinni123@gmail.com','https://www.chin23.com/',6,55,1,8,5),
		(3,'Sawmill Inn','547-964-3452','sawmill.inn@gmail.com','https://www.chin23.com/',4,50,1,9,5),
		(4,'Northgate Inn','547-876-5422','northgate.inn@gmail.com','https://www.chin23.com/',3,40,1,10,5);
		
INSERT INTO `addresses`(`address_id`, `address_line1`, `address_line2`, `city`, `state`, `country`, `zipcode`)
VALUES 
	 (1,49, 'Dave Street', 'Kitchener','ON','Canada','N2C 2P6'),
	 (2,64, 'Victoria Street', 'Kitchener','ON','Canada','N2C 2M6'),
	 (3,79, 'Connaught Street', 'London','ON','Canada','N2C 2K3'),
	 (4,45, 'Sweden St. Street', 'London','ON','Canada','N2A 0E4'),
	 (5,60, 'Lincoln Street', 'Guelph','ON','Canada','N2C 2E8'),
	 (6,20400, 'Phoenix', NULL,'AZ','USA','AZ85027'),
	 (7,8033, 'King George Boulevard', 'Surrey','BC','Canada','V3W 5B4'),
	 (8,1565, 'E South St', 'Globe','AZ','USA','85501'),
	 (9,32, ' Gandhi Road', 'Mumbai','Maharashtra','India','534076'),
	 (10,706, 'Idle rd', 'Saskatoon','SK','Bangladesh','S2L 562'),
	 (11,45, 'Vanier Park', 'Kitchener','ON','Canada','Sd3 d35'),
	 (12,41, 'Greenfield', 'London','ON','Canada','234 987'),
	 (13,89, 'Jacob Rd', 'Paris','ON','Canada','467 289'),
	 (14,85, 'Martin Street', 'Ottawa','BC','Canada','263 987'),
	 (15,78, 'Josseph St. Street', 'Guelph','BC','Canada','267 387'),
	 (16,156, 'James Road', NULL,'AZ','USA','263 762'),
	 (17,7598, 'Atomic Street', 'Ottawa','New York','USA','756 145'),
	 (18,5476, 'Saint Jake Rd', 'NULL','San Jose','USA','675 846'),
	 (19,7465, 'Thames Rd', 'NUll','Gujarat','India','145 895');

-- insert into star ratings table
INSERT INTO `star_ratings`(`star_rating_id`, `star_rating_value`,`hotel_id`) 
VALUES
	(1,5,1),
	(2,5,2),
	(3,4,3),
	(4,5,4),
	(5,3,4);

INSERT INTO `department`(`department_id`, `department_name`, `department_description`)
VALUES
	(1,'Kitchen','cooking'),
	(2,'Cleaning','sweep and mop'),
	(3,'Front Staff','handle bookings and query resolution'),
	(4,'Management','handles customer and resolve complaints'),
	(5,'Commute','pick up and drop');
	
INSERT INTO `room_type`(`room_type_id`, `room_type_name`, `room_cost`, `room_type_description`,`rooms_room_id` )
 VALUES 
	(1, 'Standard Room','103',"1 King Bed 323-sq-foot (30-sq-meter) room with city views",1),
	(2, 'Standard Twin Room','123',"Two Twin Bed 323-sq-foot (30-sq-meter) room with city views",2),
	(3, 'Executive Room','130',"1 King Bed 323-sq-foot (30-sq-meter) room with city views",3),
	(4, 'Club Room','159',"2 King Bed 323-sq-foot (30-sq-meter) room with city views",4);
	
INSERT INTO `guests`(`guest_id`, `guest_first_name`, `guest_last_name`, `guest_contact_number`, `guest_email_address`, `guest_credit_card`, `guest_id_proof`)
VALUES 
	(1,'Jane','Doe','132-456-8564','jane.doe@gmail.com',NULL,'AE0824372'),
	(2,'Jerry','Thachter','564-896-4752','jerry.ytsvg@gmail.com',NULL,'AE0804371'),
	(3,'Rihanna','Perry','745-986-7451','rih.vfdj89@gmail.com',NULL,'AE0822370'),
	(4,'Mathew','Jose','489-624-8633','mathew.jose@gmail.com',NULL,'AE0820072'),
	(5,'Jessica','Smith','487-956-8963','jess.smith@gmail.com',NULL,'AE0834372');
	

	
INSERT INTO `hotel_chain`(`hotel_chain_id`, `hotel_chain_name`, `hotel_chain_contact_number`, `hotel_chain_email_address`, `hotel_chain_website`, `hotel_id`) 
VALUES
	(1,'Best Western Hotels','456-865-8956','bw123@gmail.com','https://www.bestwestern.com/',1),
	(2,'China Town Hotels','110-526-5647','chinatown123@gmail.com','https://www.chinatown.com/',2),
	(3,'Elite Hotels','546-874-6547','elite.tea213@gmail.com','https://www.elitendhe.com/',3),
	(4,'Cosmopolitan Hotels','852-741-9765','cosmo.hotels123@gmail.com','https://www.cosmopolitan.com/',4),
	(5,'Prestige Hotels','657-784-3647','prestige2453@gmail.com','https://www.prestige.com/',4);
	

	
INSERT INTO `rooms`(`room_id`, `room_number`, `rooms_type_rooms_type_id`, `hotel_hotel_id`)
 VALUES 
	(1,1101,1,1),
	(2,1102,1,1),
	(3,1103,1,1),
	(4,1104,1,1),
	(5,1105,1,1),
	(6,1106,1,1),
	(7,1107,1,1),
	(8,1108,1,1),
	(9,1109,1,1),
	(10,1110,1,1),
	(11,1111,1,1),
	(12,1112,1,1),
	(13,1113,1,1),
	(14,1114,1,1),
	(15,1115,1,1),
	(16,1116,1,1),
	(17,1117,2,1),
	(18,1118,2,1),
	(19,1119,2,1),
	(20,1120,2,1),
	(21,1121,2,1),
	(22,1122,2,1),
	(23,1123,2,1),
	(24,1124,2,1),
	(25,1125,2,1),
	(26,1126,2,1),
	(27,1127,2,1),
	(28,1128,2,1),
	(29,1129,2,1),
	(30,1130,2,1),
	(31,1131,2,1),
	(32,1132,2,1),
	(33,1133,2,1),
	(34,1134,2,1),
	(35,1135,2,1);
	
INSERT INTO `hotel_services`(`service_id`, `service_name`, `service_description`, `service_cost`, `hotel_hotel_id`)
 VALUES
	(1,'24-hour Room Service','There will be 24-hour Room Service to take care of customers needs',20,1),
	(2,'Currency Exchange','Foreign Currency Exchange facility available',80,1),
	(3,'Laundry','Laundry/Dry Cleaning available same day',10,1),
	(4,'Entertainment Room','Book and watch movies',50,2),
	(5,'Swimming Pool','Pool access to all the guests',100,2),
	(6,'Gym','24 Hour Gym',140,2);
	
INSERT INTO `employees`(`emp_id`, `emp_first_name`, `emp_last_name`, `emp_Position`, `emp_contact_number`, `emp_email_address`, `department_department_id`, `addresses_address_id`, `hotel_hotel_id`)
 VALUES 
 (1,'Jen','Fen','Waiter','123-789-7896','jen.rds@gmail.com',1,11,1),
 (2,'Tom','Pitt','Manager','565-789-7896','tom.pit@gmail.com',3,12,1),
 (3,'David','Lawrence','Cashier','852-789-7896','david.lawr@gmail.com',2,13,1),
 (4,'Joseph','Aniston','Cook','765-789-7896','joseph.anis@gmail.com',2,14,1),
 (5,'Jeny','Patel','Manager','531-789-7896','jeny.patel@gmail.com',3,15,1);
 

 
INSERT INTO `reservation` (`reservation_id`, `reservation_date`, `duration_of_stay`, `check_in_date`, `check_out_date`, `booking_payment_type`, `total_rooms_booked`, `hotel_hotel_id`, `guests_guest_id`, `employees_emp_id`, `total_amount`, `rooms_type_rooms_type_id`,`pricelist_pricelist_id`)
 VALUES
	('1', '2018-08-08 00:00:00', '5', '2018-08-10 12:00:00', '2018-08-15 23:00:00', 'cash', '1', '1', '1', '3', '590','1','1'),
	('2', '2018-06-08 00:00:00', '20', '2018-06-08 12:00:00', '2018-06-28 23:00:00', 'card', '1', '1', '2', '1', '2300','1','1'),
	('3', '2018-06-08 00:00:00', '10', '2018-06-08 12:00:00', '2018-06-18 23:00:00', 'card', '1', '1', '1', '3', '1100','1','1'),
	('4', '2018-06-08 00:00:00', '2', '2018-06-08 12:00:00', '2018-06-10 23:00:00', 'card', '1', '1', '4', '1', '290','2','2'),
	('5', '2018-06-08 00:00:00', '3', '2018-06-08 12:00:00', '2018-06-11 23:00:00', 'card', '1', '1', '2', '3', '350','2','2'),
	('6', '2018-06-08 00:00:00', '5', '2018-06-08 12:00:00', '2018-06-13 23:00:00', 'card', '1', '1', '3', '3', '570','2','2'),
	('7', '2018-08-13 00:00:00', '2', '2018-06-13 12:00:00', '2018-06-15 23:00:00', 'cash', '2', '1', '5', '4', '280','1','1'),
	('8', '2018-08-10 00:00:00', '3', '2018-08-11 12:00:00', '2018-08-13 23:00:00', 'card', '1', '1', '3', '3', '350','3','1'),
	('9', '2018-08-10 00:00:00', '5', '2018-08-12 12:00:00', '2018-08-16 23:00:00', 'card', '1', '1', '4', '3', '570','1','1'),
	('10', '2018-08-14 00:00:00', '2', '2018-08-15 12:00:00', '2018-08-17 23:00:00', 'cash', '2', '1', '5', '4', '280','3','3'),
	('11', '2018-08-14 00:00:00', '5', '2018-08-16 12:00:00', '2018-08-21 23:00:00', 'cash', '1', '1', '1', '3', '590','3','3'),
	('12', '2018-08-14 00:00:00', '20', '2018-08-17 12:00:00', '2018-09-07 23:00:00', 'card', '1', '1', '2', '1', '2300','4','1'),
	('13', '2018-08-14 00:00:00', '10', '2018-08-15 12:00:00', '2018-08-25 23:00:00', 'card', '1', '1', '1', '3', '1100','1','4'),
	('14', '2018-08-14 00:00:00', '2', '2018-08-16 12:00:00', '2018-08-18 23:00:00', 'card', '2', '1', '4', '1', '290','4','4'),
	('15', '2018-08-14 00:00:00', '3', '2018-08-17 12:00:00', '2018-08-20 23:00:00', 'card', '3', '1', '2', '3', '350','4','4');
	
INSERT INTO `pricelist` (
  `pricelist_id`,
  `pricelist_base`,
  `pricelist_per_season`,
  `pricelist_per_month`,
  `pricelist_catering` ,
  `pricelist_extra_facilities`,
  `pricelist_outstanding_balance`,
  `pricelist_discount`,
  `hotel_hotel_id`
)
VALUES 
	( '1','150','50','30','20' ,'40','290','30','1'),
    ( '2','250','50','30','90' ,'80','500','0','2'),
    ( '3','350','50','30','40' ,'60','530','20','3'),
    ( '4','450','50','30','0' ,'0','530','10','4');



