insert into borrowed_books (isbn, personal_number, delivery_service, fast_delivery, start_date, end_date, postage, username)
values ('13579', '2302991135412', 'FedEx', true, '2020-10-10', '2020-11-09', 5.65, 'postgres')

insert into borrowed_books (isbn, personal_number, delivery_service, fast_delivery, start_date, end_date, postage, username)
values ('66677', '0805960187151', 'DHL', false, '2020-10-13', '2020-11-12', 2.81, 'postgres')

insert into borrowed_books (isbn, personal_number, delivery_service, fast_delivery, start_date, end_date, postage, username)
values ('88177', '1002985160786', 'BH Posta', false, '2020-10-13', '2020-11-12', 4.35, 'postgres')


select * from borrowed_books bb ;
