
use AirportData

-- Vraag 1 ===================================================================================================

select aname as Airport_Name, '' as Route_Description , sum(noseats) as Nr_Of_Seats
from Airport
inner join Flight
on Airport.airport = Flight.fromairport
inner join RouteFlight
on Flight.routeno = RouteFlight.routeno
inner join Aircraft
on Flight.aircrafttype = Aircraft.aircrafttype
where deptime between '0900' and '1700'
group by aname
union
select aname as Airport_Name, rdescription as Route_Description , sum(noseats) as Nr_Of_Seats
from Airport
inner join Flight
on Airport.airport = Flight.fromairport
inner join RouteFlight
on Flight.routeno = RouteFlight.routeno
inner join Aircraft
on Flight.aircrafttype = Aircraft.aircrafttype
where deptime between '0900' and '1700'
group by rdescription , aname
order by Airport_Name , Route_Description desc

-- Vraag 2 ===================================================================================================

select distinct Flight1.fromairport , Flight2.toairport , Flight1.aircrafttype , Flight1.service
from Flight Flight1
inner join Flight Flight2
on Flight1.flightno = Flight2.flightno
where  Flight1.fromairport = 'HROW'
and Flight1.service = 'Coffee'
and Flight2.service = 'Coffee'
and Flight1.aircrafttype < Flight2.aircrafttype

-- Vraag 3 ===================================================================================================

-- drop table AIRPORTCALL

-- (a)
create table AIRPORTCALL
(
AIRPORT_ID char(4)
		constraint const_AIRPORT_ID_PK primary key,
AIRPORT_NAME char(20),
FLIGHT_INFO char(20)
);
insert into AIRPORTCALL(AIRPORT_ID,AIRPORT_NAME,FLIGHT_INFO)
select airport , aname , flightinfo
from Airport

-- (b)
alter table AIRPORTCALL
add Call_Status char(3) not null
		constraint const_Call_Status_1 check(Call_Status = 'BEL' or Call_Status = 'REC' or Call_Status = 'OKE')
		constraint const_Call_Status_2 default('BEL')

-- (c)

select * from Flight
-- =>  ? 


