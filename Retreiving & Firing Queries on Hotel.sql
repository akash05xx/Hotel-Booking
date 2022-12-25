use Hotel
SELECT hotelName,city from Hotel Where city='Mumbai'
SELECT hotelNo,roomNo,type from Room Where type='Double'
SELECT hotelNo,type,price from Room Where price > 3000
SELECT hotelNo,type,price from Room Where price < 1500
SELECT hotelNo,type,price from Room Where price between 1500 and 2000
SELECT hotelNo,type,price from Room ORDER BY price ASC
SELECT guestNo from Booking where dateFrom='2020-03-07 00:00:00.000'
SELECT guestNo from Booking where dateFrom between '2020-03-02 ' and 
'2020-03-04'
SELECT guestNo,guestName from Guest where guestAddress='Ulwe'
SELECT guestNo,guestName from Guest where guestName like'A%'
select left(guestName,3)from Guest
select Right(guestName,3)from Guest
