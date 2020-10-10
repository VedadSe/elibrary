create table books (
	isbn varchar(5) not null,
	title varchar(50) not null,
	author_first_name varchar(20) not null,
	author_last_name varchar(20) not null,
	edition int not null,
	weight_in_kilos double precision not null,
	active_row boolean not null default true,
	username varchar(12) not null,
	date_of_entry timestamp with time zone not null default now(),
	update_date timestamp with time zone not null default now(),
	primary key (isbn)
);

create table members (
	personal_number varchar(13) not null,
	first_name varchar(20) not null,
	last_name varchar(20) not null,
	address varchar(50) not null,
	postal_code varchar(5) not null,
	country varchar(20) not null,
	phone_number varchar(15),
	e_mail varchar(30),
	gender char(1) not null,
	adult boolean not null,
	membership_fee double precision not null,
	active_row boolean not null default true,
	username varchar(12) not null,
	date_of_entry timestamp with time zone not null default now(),
	update_date timestamp with time zone not null default now(),
	primary key (personal_number)
);

create table borrowed_books (
	isbn varchar(5) references books(isbn),
	personal_number varchar(13) references members(personal_number),
	delivery_service varchar(10) not null,
	fast_delivery boolean not null,
	date_of_shipment timestamp with time zone not null default now(),
	start_date date not null,
	end_date date not null,
	postage double precision not null,
	book_damaged boolean,
	book_read boolean,
	delay_in_days int,
	compensation double precision,
	book_returned boolean,
	active_row boolean not null default true,
	username varchar(12) not null,
	date_of_entry timestamp with time zone not null default now(),
	update_date timestamp with time zone not null default now(),
	primary key (isbn, personal_number)
);
