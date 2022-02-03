--Dimension Tables
CREATE TABLE PROMOTIONS (
                PROMOTION_KEY INT PRIMARY KEY, 
                PROMOTION_CODE VARCHAR(100),  
                PROMOTION_NAME VARCHAR(100), 
                PROMOTION_TYPE VARCHAR(100),
                PROMOTION_STARTDATE DATE,
                PROMOTION_ENDDATE DATE,
                PROMOTION_VALUE NUMBER(8,2) );

CREATE TABLE TICKETS (
                TICKET_KEY INT PRIMARY KEY,
                TICKET_ID VARCHAR(100),
                TICKET_CLASS VARCHAR(100),
                FARE NUMBER,
                SEAT_NUM NUMBER(4),
	UPGRADE_CHECK NUMBER(1) );

CREATE TABLE DATE_TB (
                DATE_KEY INT PRIMARY KEY,
                FULL_DATE DATE,
                CALENDAR_YEAR NUMBER(4),
                QUARTER NUMBER(1),
                CALENDAR_MONTH NUMBER(2),
                WEEK_IN_YEAR NUMBER(3),
                WEEK_IN_MONTH NUMBER(1),
                DAY_NAME VARCHAR(100),
                DAY_IN_WEEK NUMBER(1),
                DAY_IN_MONTH NUMBER(2),
                DAY_IN_YEAR NUMBER(4) );

CREATE TABLE AIRCRAFTS (
                AIRPLANE_KEY INT PRIMARY KEY,
                AIRPLANE_CODE VARCHAR(100),
                AIRPLANE_TYPE VARCHAR(100),
                AIRPLANE_CAPACITY NUMBER(4) );

CREATE TABLE FLIGHTS(
                FLIGHT_KEY INT PRIMARY KEY,
                FLIGHT_NUMBER NUMBER,
                FLIGHT_ARRIVAL_CITY VARCHAR(100),
                FLIGHT_DEPARTURE_CITY VARCHAR(100),
                DEP_TIME DATE,
                ARR_TIME DATE,
                TRANSIT_DURATION NUMBER);

CREATE TABLE PASSENGERS(
                PASSENGER_KEY INT PRIMARY KEY,
                PASSENGER_ID NUMBER,
                PASSENGER_TYPE VARCHAR(100),
                PASSENGER_NAME VARCHAR(100),
                CITY VARCHAR(100),
                STATE VARCHAR(100),
                STREET_ADDRESS VARCHAR(400),
                ZIP_CODE VARCHAR(100),
                MILES NUMBER);

CREATE TABLE RESERVATIONS_CHANNEL(
                RESERVATION_KEY INT PRIMARY KEY,
                RESERVATION_CHANNEL VARCHAR(100));

CREATE TABLE PROBLEMS(
                PROBLEM_KEY INT PRIMARY KEY,
                PROBLEM_TYPE VARCHAR(100),
                PROBLEM_SEVERITY VARCHAR(100),
                INTERACTION_TYPE VARCHAR(100),
                PASSENGER_COMPLAINT VARCHAR(100));
                
                
--Fact Tables
CREATE TABLE MARKETING(
                FLIGHT_KEY  INT,
                PROMOTION_KEY INT,
                TICKET_KEY INT,
                PASSENGER_KEY INT,
                DATE_KEY INT,
                GOLD_PASSENGERS_RATIO NUMBER,
                ALUMINUM_PASSENGERS_RATIO NUMBER,
                PLATINUM_PASSENGERS_RATIO NUMBER,
                TITANIUM_PASSENGERS_RATIO NUMBER,
                NUM_UPGRADED_TICKETS NUMBER);
                
CREATE TABLE RESERVATIONS(
                 FLIGHT_KEY INT,
                 TICKET_KEY INT,
                 DATE_KEY INT,
                 PASSENGER_KEY INT,
                 RESERVATION_KEY INT,
                 AIRPLANE_KEY INT,
                 TOTAL_PROFIT NUMBER);

CREATE TABLE CUSTOMER_CARE(
                DATE_KEY INT,
                FLIGHT_KEY INT,
                PASSENGER_KEY INT,
                AIRPLANE_KEY INT,
                PROBLEM_KEY INT,
                COMPLAINTS_PER_FLIGHT NUMBER,
                COMPLAINTS_PER_FLIGHT_RATIO NUMBER,
                COMPLAINTS_PER_AIRPLANE NUMBER,
                COMPLAINTS_PER_YEAR NUMBER,
                COMPLAINTS_PER_YEAR_RATIO NUMBER);
