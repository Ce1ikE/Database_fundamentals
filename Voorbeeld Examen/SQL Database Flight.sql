
--create database AirportData 
--use AirportData

--drop table Airport
--drop table Route
--drop table Fares
--drop table Tariff
--drop table Aircraft
--drop table Flight
--drop table Passenger
--drop table Ticket
--drop table Itinerary

--========================================================================================
--			CREATE TABLES
--========================================================================================
CREATE TABLE Airport
(
airport char(4) not null,
aname varchar(20),
checkin varchar(50),
resvtns varchar(12),
flightinfo varchar(12) 
);

CREATE TABLE RouteFlight
( 
routeno int not null,
rdescription varchar(40)
);

CREATE TABLE Fares
(
faretype char(3) not null,
fdescription varchar(25),
conditions varchar(40) 
);

CREATE TABLE Tariff
(
routeno int not null,
faretype char(3) not null,
price money 
);

CREATE TABLE Aircraft
( 
aircrafttype char(3) not null,
adescription varchar(40),
noseats smallint 
);

CREATE TABLE Flight
( 
flightno varchar(5) not null,
fromairport char(4),
toairport char(4),
deptime char(5),
arrtime char(5),
service varchar(20),
aircrafttype char(3),
routeno int 
);

CREATE TABLE Passenger
(
pid integer not null,
name varchar(20),
address varchar(40),
telno varchar(12) 
);

CREATE TABLE Ticket
(
ticketno integer not null,
ticketdate date,
pid integer 
);

CREATE TABLE Itinerary
(
ticketno integer not null,
flightno varchar(5) not null,
legno int not null,
flightdate date,
faretype char(3)
);


--========================================================================================
--			ADD DATA
--========================================================================================



insert into Airport(airport,aname,checkin,resvtns,flightinfo)
values		
('AMST', 'Amsterdam', 'South Hall Departures 20 mins before flight' , '06 022 2426', '20 178299'),
('BELF', 'Belfast', 'Desks 18 and 19, 15 mins before flight', '023 2325151', '08494 22888'),
('BIRM', 'Birmingham', 'Check-in desks 20 mins before flight', '021 236', '0121'),
('BRUS', 'Brussels Sabena', 'check-in desks 30 mins before flight', '2 511 9030', '2 7207167'),
('EMID', 'East Midlands', 'Check-in 15 mins before flight for heavy bags', '0332 810552', '0332 852614'),
('DUBL', 'Dublin', 'Check-in 20 mins prior to departure', '01 423', '555'),
('EDIN', 'Edinburgh', 'Gate 1 at least 10 mins before departure', '031 447', '1000'),
('GLAS', 'Glasgow', 'Desks 60-64/Gate 8 20 mins before departure', '041 204', '2436'),
('HROW', 'Heathrow Island', 'A/B Terminal-1 20 mins before flight', '081 5895599', '081 7457321'),
('LBDR', 'Leeds/Bradford', 'Check-in 15 mins before flight for baggage', '0532', '451991'),
('LVPL', 'Liverpool', '15 mins heavy baggages,10 mins hand baggage', '051 494', '0200'),
('PARI', 'Paris Hall', '22 Terminal 1 30 mins before flight', '14742 14444', '14862 2280'),
('TEES', 'Teeside', '15 mins heavy baggages,10 mins hand baggage', '0642', '219444')

insert into RouteFlight(routeno,rdescription)
values
(3, 'Heathrow-Belfast'),
(4, 'Heathrow-Edinburgh'),
(6, 'Heathrow-Leeds/Bradford'),
(7, 'Heathrow-Liverpool'),
(8, 'Heathrow-Teeside'),
(9, 'Birmingham-Brussels'),
(11, 'East Midlands-Belfast'),
(13, 'East Midlands-Paris'),
(14, 'Heathrow-Birmingham'),
(15, 'Heathrow-East Midlands')

insert into Fares(faretype,fdescription,conditions)
values
('BUR', 'Business', 'Return Business use only'),
('SDS', 'Standard Single', null),
('SDR', 'Standard Return', null),
('EUR', 'Eurobudget Return', 'Available Paris Brussels Amsterdam'),
('KFS', 'Key Fare Single', null),
('SBS', 'Standby Single', null),
('EXR', 'Excursion Return', 'Same day return'),
('PXR', 'Super Key Return', null),
('APR', 'Advanced Purchase Return', '60 days advanced booking'),
('SXR', 'Superpex Return', '90 days advanced booking')

insert into Tariff(routeno,faretype,price)
values
(3, 'BUR', 117),
(3, 'SDR', 158),
(3, 'SDS', 79),
(4, 'SDR', 162),
(4, 'SBS', 49),
(6, 'BUR', 117),
(6, 'SBS', 42),
(6, 'KFS', 53),
(7, 'SDR', 128),
(8, 'SDS', 74),
(9, 'PXR', 153),
(9, 'EUR', 181),
(9, 'APR', 95),
(11, 'KFS', 59),
(13, 'EXR', 121),
(14, 'SDR', 110),
(14, 'SBS', 33),
(15, 'SBS', 33)

insert into Flight(flightno,fromairport,toairport,deptime,arrtime,service,aircrafttype,routeno)
values
('BD80', 'HROW', 'BELF', '0725', '0840', 'Breakfast', '737', 3),
('BD82', 'HROW', 'BELF', '0930', '1045', 'Breakfast', '737', 3),
('BD91', 'BELF', 'HROW', '1730', '1840', 'Dinner', '737', 3),
('BD95', 'BELF', 'HROW', '2120', '2230', 'Dinner', '737', 3),
('BD54', 'HROW', 'EDIN', '1040', '1155', 'Breakfast', '737', 4),
('BD51', 'EDIN', 'HROW', '0710', '0825', 'Breakfast', '737', 4),
('BD412', 'HROW', 'LBDR', '0850', '0945', 'Breakfast', 'DC9', 6),
('BD414', 'HROW', 'LBDR', '1145', '1235', 'Light Meal', 'DC9', 6),
('BD413', 'LBDR', 'HROW', '1020', '1115', 'Light Meal', 'DC9', 6),
('BD419', 'LBDR', 'HROW', '1845', '1940', 'Dinner', 'DC9', 6),
('BD582', 'HROW', 'LVPL', '0810', '0900', 'Breakfast', 'DC9', 7),
('BD589', 'LVPL', 'HROW', '1925', '2015', 'Dinner', 'DC9', 7),
('BD332', 'HROW', 'TEES', '0835', '0935', 'Breakfast', 'DC9', 8),
('BD651', 'BIRM', 'BRUS', '0730', '0935', 'Breakfast', 'DC9', 9),
('BD655', 'BIRM', 'BRUS', '1500', '1705', 'Afternoon Tea', 'DC9', 9),
('BD657', 'BIRM', 'BRUS', '1730', '1935', 'Dinner', 'DC9', 9),
('BD659', 'BIRM', 'BRUS', '1825', '2030', 'Dinner', 'DC9', 9),
('BD652', 'BRUS', 'BIRM', '1005', '1010', 'Breakfast', 'DC9', 9),
('BD656', 'BRUS', 'BIRM', '1750', '1755', 'Afternoon Tea', 'DC9', 9),
('BD658', 'BRUS', 'BIRM', '2005', '2010', 'Dinner', 'DC9', 9),
('BD660', 'BRUS', 'BIRM', '2100', '2105', 'Dinner', 'DC9', 9),
('BD275', 'EMID', 'BELF', '1800', '1855', 'Dinner', 'DC9', 11),
('BD255', 'EMID', 'PARI', '1250', '1455', 'Lunch', 'DC9', 13),
('BD257', 'EMID', 'PARI', '1530', '1735', 'Afternoon Tea', 'DC9', 13),
('BD256', 'PARI', 'EMID', '1530', '1540', 'Afternoon Tea', 'DC9', 13),
('BD258', 'PARI', 'EMID', '1810', '1820', 'Dinner', 'DC9', 13),
('BD772', 'HROW', 'BIRM', '0810', '0900', 'Coffee', 'ATP', 14),
('BD774', 'HROW', 'BIRM', '1045', '1130', 'Coffee', 'ATP', 14),
('BD776', 'HROW', 'BIRM', '1230', '1320', 'Coffee', 'ATP', 14),
('BD778', 'HROW', 'BIRM', '1310', '1355', 'Coffee', 'ATP', 14),
('BD780', 'HROW', 'BIRM', '1530', '1625', 'Coffee', 'ATP', 14),
('BD782', 'HROW', 'BIRM', '1755', '1840', 'Coffee', 'ATP', 14),
('BD771', 'BIRM', 'HROW', '0655', '0745', 'Breakfast', 'ATP', 14),
('BD773', 'BIRM', 'HROW', '0930', '1015', 'Coffee', 'ATP', 14),
('BD775', 'BIRM', 'HROW', '1200', '1245', 'Coffee', 'ATP', 14),
('BD777', 'BIRM', 'HROW', '1420', '1505', 'Coffee', 'ATP', 14),
('BD779', 'BIRM', 'HROW', '1640', '1725', 'Coffee', 'ATP', 14),
('BD781', 'BIRM', 'HROW', '2010', '2100', 'Coffee', 'ATP', 14),
('BD222', 'HROW', 'EMID', '0755', '0845', 'Coffee', 'ATP', 15),
('BD224', 'HROW', 'EMID', '1100', '1150', 'Coffee', 'ATP', 15),
('BD226', 'HROW', 'EMID', '1415', '1505', 'Coffee', 'ATP', 15),
('BD228', 'HROW', 'EMID', '1655', '1745', 'Coffee', 'ATP', 15),
('BD230', 'HROW', 'EMID', '1945', '2035', 'Coffee', 'ATP', 15),
('BD221', 'EMID', 'HROW', '0645', '0725', 'Breakfast', 'ATP', 15),
('BD223', 'EMID', 'HROW', '1235', '1325', 'Coffee', 'ATP', 15),
('BD225', 'EMID', 'HROW', '1235', '1325', 'Coffee', 'ATP', 15),
('BD227', 'EMID', 'HROW', '1535', '1625', 'Coffee', 'ATP', 15),
('BD229', 'EMID', 'HROW', '1805', '1855', 'Coffee', 'ATP', 15)



insert into Aircraft(aircrafttype,adescription,noseats)
values
('ATP', 'Advanced Turbo Prop', 48),
('DC9', 'McDonnel Douglas Jet', 120),
('737', 'Boeing 737-300 Jet', 300)



insert into Passenger(pid,name,address,telno)
values
(26, 'J Millar', 'Englewood Cliffs', '061 343 881'),
(28, 'J D Ullman', '1 Microsoft Way', null),
(29, 'A Smithson', '16 Bedford St', '071 577 890'),
(30, 'D Etheridge', '4 Maylands Avenue', null),
(34, 'E Simon', '8 Cherry Street', null),
(10, 'D N Hamer', '1 St Paul s Churchyard', null),
(20, 'D E Avison', '5 Chancery Lane', null),
(21, 'G B Davis', '25 Allenby Road', null),
(24, 'C Evans', '63 Kew Green', null),
(90, 'A N Smith', '81 Digby Crescent', '071 321 456'),
(91, 'T Pittman', 'The Little House', null),
(92, 'J Peters', '31 Lucas Road', null),
(93, 'K E Kendall', '11 Rosedale Avenue', null),
(94, 'R H Miller', '155 Kingston Road', '0638 4672')

set dateformat dmy
insert into Ticket(ticketno,ticketdate,pid) 
values
(100001, '01-08-94', 26),
(100002, '25-07-94', 28),
(100010, '09-08-94', 29),
(100011, '11-08-94', 24),
(100012, '01-06-94', 21),
(100020, '15-08-94', 30),
(100021, '28-07-94', 34),
(100022, '05-07-94', 20),
(100030, '30-08-94', 94),
(100041, '01-08-94', 91),
(100051, '01-09-94', 92),
(100052, '1-09-94', 93),
(100100, '15-09-94', 94)

set dateformat dmy
insert into Itinerary(ticketno,flightno,legno,flightdate,faretype) 
values
(100001, 'BD80', 1, '05-08-94', 'BUR'),
(100001, 'BD95', 2, '05-08-94', 'BUR'),
(100002, 'BD80', 1, '05-08-94', 'SDR'),
(100002, 'BD95', 2, '10-08-94', 'SDR'),
(100010, 'BD82', 1, '10-08-94', 'SDS'),
(100011, 'BD54', 1, '12-08-94', 'SBS'),
(100012, 'BD776', 1, '15-08-94', 'SDR'),
(100012, 'BD655', 2, '15-08-94', 'APR'),
(100012, 'BD652', 3, '20-08-94', 'APR'),
(100012, 'BD775', 4, '20-08-94', 'SDR'),
(100020, 'BD772', 1, '20-08-94', 'SBS'),
(100020, 'BD655', 2, '20-08-94', 'EUR'),
(100020, 'BD652', 3, '23-08-94', 'EUR'),
(100021, 'BD412', 1, '02-08-94', 'SBS'),
(100021, 'BD419', 2, '07-08-94', 'SBS'),
(100022, 'BD412', 1, '07-08-94', 'BUR'),
(100022, 'BD419', 2, '08-08-94', 'BUR'),
(100030, 'BD224', 1, '01-09-94', 'SBS'),
(100030, 'BD255', 2, '02-09-94', 'EXR'),
(100030, 'BD256', 3, '06-09-94', 'EXR'),
(100030, 'BD275', 4, '06-09-94', 'KFS'),
(100041, 'BD412', 1, '02-08-94', 'KFS'),
(100051, 'BD582', 1, '07-09-94', 'SDR'),
(100051, 'BD589', 2, '07-09-94', 'SDR'),
(100052, 'BD332', 1, '09-09-94', 'SDS'),
(100100, 'BD51', 1, '24-09-94', 'SDR'),
(100100, 'BD774', 2, '24-09-94', 'SDR'),
(100100, 'BD659', 3, '25-09-94', 'PXR'),
(100100, 'BD658', 4, '01-10-94', 'PXR'),
(100100, 'BD771', 5, '02-10-94', 'SDR'),
(100100, 'BD54', 6, '02-10-94', 'SDR')















