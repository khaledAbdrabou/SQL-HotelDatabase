SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';



-- Creating Schema hotel_database

CREATE SCHEMA IF NOT EXISTS `hotel_database` DEFAULT CHARACTER SET utf8 ;
USE `hotel_database` ;


-- Creating Table `hotel_database`.`addresses`

DROP TABLE IF EXISTS `hotel_database`.`addresses` ;

CREATE TABLE IF NOT EXISTS `hotel_database`.`addresses` (
  `address_id` INT NOT NULL,
  `address_line1` VARCHAR(100) NULL,
  `address_line2` VARCHAR(100) NULL,
  `city` VARCHAR(45) NULL,
  `state` VARCHAR(45) NULL,
  `country` VARCHAR(45) NULL,
  `zipcode` VARCHAR(8) NULL,
  PRIMARY KEY (`address_id`))
ENGINE = InnoDB;



-- Creating Table `hotel_database`.`hotel_chain`
DROP TABLE IF EXISTS `hotel_database`.`hotel_chain` ;

CREATE TABLE IF NOT EXISTS `hotel_database`.`hotel_chain` (
  `hotel_chain_id` INT NOT NULL,
  `hotel_chain_name` VARCHAR(45) NULL,
  `hotel_chain_contact_number` VARCHAR(12) NULL,
  `hotel_chain_email_address` VARCHAR(45) NULL,
  `hotel_chain_website` VARCHAR(45) NULL,
  `hotel_id` INT NOT NULL,
  PRIMARY KEY (`hotel_chain_id`),
  FOREIGN KEY (`hotel_id`) REFERENCES `hotel_database`.`hotel` (`hotel_id`)
 )
ENGINE = InnoDB;



-- Creating Table `hotel_database`.`star_ratings`

DROP TABLE IF EXISTS `hotel_database`.`star_ratings` ;

CREATE TABLE IF NOT EXISTS `hotel_database`.`star_ratings` (
  `star_rating_id` INT NOT NULL,
  `star_rating_value` VARCHAR(100) NULL,
  `hotel_id` INT NOT NULL,
  FOREIGN KEY (`hotel_id`) REFERENCES `hotel_database`.`hotel` (`hotel_id`),
  PRIMARY KEY (`star_rating_id`))
ENGINE = InnoDB;

-- Creating Table `hotel_database`.`hotel`

DROP TABLE IF EXISTS `hotel_database`.`hotel` ;

CREATE TABLE IF NOT EXISTS `hotel_database`.`hotel` (
  `hotel_id` INT NOT NULL,
  `hotel_name` VARCHAR(45) NULL,
  `hotel_contact_number` VARCHAR(12) NULL,
  `hotel_email_address` VARCHAR(45) NULL,
  `hotel_website` VARCHAR(45) NULL,
  `hotel_floor_count` INT NULL,
  `hotel_room_count` INT NULL,
  `hotel_chain_id` INT NULL,
  `addresses_address_id` INT NOT NULL,
  `star_ratings_star_rating_id` INT NOT NULL,
  PRIMARY KEY (`hotel_id`),
  FOREIGN KEY (`hotel_chain_id`) REFERENCES `hotel_database`.`hotel_chain` (`hotel_chain_id`),
  FOREIGN KEY (`addresses_address_id`) REFERENCES `hotel_database`.`addresses` (`address_id`),
  FOREIGN KEY (`star_ratings_star_rating_id`) REFERENCES `hotel_database`.`star_ratings` (`star_rating_id`)
)
ENGINE = InnoDB;



-- Creating Table `hotel_database`.`room_type`

DROP TABLE IF EXISTS `hotel_database`.`room_type` ;

CREATE TABLE IF NOT EXISTS `hotel_database`.`room_type` (
  `room_type_id` INT NOT NULL,
  `room_type_name` VARCHAR(45) NULL,
  `room_cost` DECIMAL(10,2) NULL,
  `room_type_description` VARCHAR(100) NULL,
  `rooms_room_id` INT,
  PRIMARY KEY (`room_type_id`),
  FOREIGN KEY (`rooms_room_id`) REFERENCES `hotel_database`.`rooms` (`room_id`)
  )
ENGINE = InnoDB;



-- Creating Table `hotel_database`.`rooms`

DROP TABLE IF EXISTS `hotel_database`.`rooms` ;

CREATE TABLE IF NOT EXISTS `hotel_database`.`rooms` (
  `room_id` INT NOT NULL,
  `room_number` INT(4) NULL,
  `rooms_type_rooms_type_id` INT NOT NULL,
  `hotel_hotel_id` INT NOT NULL,
  PRIMARY KEY (`room_id`, `hotel_hotel_id`),
  FOREIGN KEY (`rooms_type_rooms_type_id`)
  REFERENCES `hotel_database`.`room_type` (`room_type_id`),

  FOREIGN KEY (`hotel_hotel_id`)
  REFERENCES `hotel_database`.`hotel` (`hotel_id`))

ENGINE = InnoDB;



-- Creating Table `hotel_database`.`guests`

DROP TABLE IF EXISTS `hotel_database`.`guests` ;

CREATE TABLE IF NOT EXISTS `hotel_database`.`guests` (
  `guest_id` INT NOT NULL,
  `guest_first_name` VARCHAR(45) NULL,
  `guest_last_name` VARCHAR(45) NULL,
  `guest_contact_number` VARCHAR(12) NULL,
  `guest_email_address` VARCHAR(45) NULL,
  `guest_credit_card` VARCHAR(45) NULL,
  `guest_id_proof` VARCHAR(45) NULL,
  PRIMARY KEY (`guest_id`))
ENGINE = InnoDB;


-- Creating Table `hotel_database`.`department`

DROP TABLE IF EXISTS `hotel_database`.`department` ;

CREATE TABLE IF NOT EXISTS `hotel_database`.`department` (
  `department_id` INT NOT NULL,
  `department_name` VARCHAR(45) NULL,
  `department_description` VARCHAR(100) NULL,
  PRIMARY KEY (`department_id`))
ENGINE = InnoDB;


-- Creating Table `hotel_database`.`employees`
DROP TABLE IF EXISTS `hotel_database`.`employees` ;

CREATE TABLE IF NOT EXISTS `hotel_database`.`employees` (
  `emp_id` INT NOT NULL,
  `emp_first_name` VARCHAR(45) NULL,
  `emp_last_name` VARCHAR(45) NULL,
  `emp_Position` VARCHAR(45) NULL,
  `emp_contact_number` VARCHAR(12) NULL,
  `emp_email_address` VARCHAR(45) NULL,
  `department_department_id` INT NOT NULL,
  `addresses_address_id` INT NOT NULL,
  `hotel_hotel_id` INT NOT NULL,
  PRIMARY KEY (`emp_id`),
    FOREIGN KEY (`department_department_id`)
    REFERENCES `hotel_database`.`department` (`department_id`),
    FOREIGN KEY (`addresses_address_id`)
    REFERENCES `hotel_database`.`addresses` (`address_id`),
    FOREIGN KEY (`hotel_hotel_id`)
    REFERENCES `hotel_database`.`hotel` (`hotel_id`)
    )
ENGINE = InnoDB;


-- Creating Table `hotel_database`.`reservation`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `hotel_database`.`reservation` ;

CREATE TABLE IF NOT EXISTS `hotel_database`.`reservation` (
  `reservation_id` INT NOT NULL,
  `reservation_date` DATETIME NULL,
  `duration_of_stay` VARCHAR(10) NULL,
  `check_in_date` DATETIME NULL,
  `check_out_date` DATETIME NULL,
  `booking_payment_type` VARCHAR(45) NULL,
  `total_rooms_booked` INT NULL,
  `hotel_hotel_id` INT NOT NULL,
  `guests_guest_id` INT NOT NULL,
  `employees_emp_id` INT NOT NULL,
  `total_amount` DECIMAL(10,2) NULL,
  `rooms_type_rooms_type_id` INT NOT NULL,
  `pricelist_pricelist_id` INT NOT NULL,
  PRIMARY KEY (`reservation_id`),
    FOREIGN KEY (`hotel_hotel_id`)
    REFERENCES `hotel_database`.`hotel` (`hotel_id`),

    FOREIGN KEY (`guests_guest_id`)
    REFERENCES `hotel_database`.`guests` (`guest_id`),

    FOREIGN KEY (`employees_emp_id` )
    REFERENCES `hotel_database`.`employees` (`emp_id` ),
   
    FOREIGN KEY (`rooms_type_rooms_type_id`)
    REFERENCES `hotel_database`.`room_type` (`room_type_id`),
    
    FOREIGN KEY (`pricelist_pricelist_id`)
    REFERENCES `hotel_database`.`pricelist` (`pricelist_id`)
   
   )
ENGINE = InnoDB;



--  Creating Table `hotel_database`.`hotel_services`
DROP TABLE IF EXISTS `hotel_database`.`hotel_services` ;

CREATE TABLE IF NOT EXISTS `hotel_database`.`hotel_services` (
  `service_id` INT NOT NULL,
  `service_name` VARCHAR(45) NULL,
  `service_description` VARCHAR(100) NULL,
  `service_cost` DECIMAL(10,2) NULL,
  `hotel_hotel_id` INT NOT NULL,
  PRIMARY KEY (`service_id`),
  FOREIGN KEY (`hotel_hotel_id`)
  REFERENCES `hotel_database`.`hotel` (`hotel_id`)
 )
ENGINE = InnoDB;


-- Creating Table `hotel_database`.`pricelist`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `hotel_database`.`pricelist` ;

CREATE TABLE IF NOT EXISTS `hotel_database`.`pricelist` (
  `pricelist_id` INT NOT NULL,
  `pricelist_base` DECIMAL(10,2) NULL,
  `pricelist_per_season` DECIMAL(10,2) NULL,
  `pricelist_per_month` DECIMAL(10,2) NULL,
  `pricelist_catering` DECIMAL(10,2) NULL,
  `pricelist_extra_facilities` DECIMAL(10,2) NULL,
  `pricelist_outstanding_balance` DECIMAL(10,2) NULL,
  `pricelist_discount` INT NULL,
  `hotel_hotel_id` INT NOT NULL,

  PRIMARY KEY (`pricelist_id`),
  FOREIGN KEY (`hotel_hotel_id`)
  REFERENCES `hotel_database`.`hotel` (`hotel_id`)
   )
ENGINE = InnoDB;





SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
