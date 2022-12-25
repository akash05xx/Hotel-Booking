create table Hotel (
hotelNo numeric(10),
hotelName varchar(20),
city varchar(8),
constraint hotel_PK PRIMARY KEY(hotelNo)
);

CREATE TABLE Room (
roomNo numeric(10),
hotelNo numeric(10),
type  varchar(20),
price money,
CONSTRAINT room_pk PRIMARY KEY(roomNo, hotelNo),
CONSTRAINT hotel_fk FOREIGN KEY(hotelNo) REFERENCES Hotel
);

CREATE TABLE Guest (
guestNo numeric(10),
guestName varchar(20),
guestAddress varchar(30),
CONSTRAINT guest_pk PRIMARY KEY(guestNo)
);

CREATE TABLE Booking (
hotelNo numeric(10),
guestNo numeric(10),
dateFrom datetime,
dateTo datetime,
roomNo numeric(10),
CONSTRAINT booking_pk PRIMARY KEY(hotelNo, guestNo, dateFrom),
CONSTRAINT room_fk FOREIGN KEY(roomNo, hotelNo) REFERENCES Room,
CONSTRAINT guest_fk FOREIGN KEY(guestNo) REFERENCES guest
);

