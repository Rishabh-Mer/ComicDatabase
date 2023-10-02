-- -------------------------------------------- Database Creation ------------------------------------------------
CREATE DATABASE comic_store;

USE comic_store;

-- --------------------------------------------------- TABLES ------------------------------------------------------

-- COMIC BOOK SERIES TABLE  
CREATE TABLE comic_book_series (
    
    series_id INT PRIMARY KEY AUTO_INCREMENT,
    series_name VARCHAR(100) NOT NULL,
    publishier VARCHAR(15) NOT NULL
);


-- COMIC BOOK TABLE
CREATE TABLE comic_books (

    comic_id INT PRIMARY KEY AUTO_INCREMENT,
    comic_name VARCHAR(100) NOT NULL,
    series_id INT,
    issue_number INT(4) NOT NULL,
    publish_date DATE NOT NULL,
    price FLOAT(5) NOT NULL,
    FOREIGN KEY (series_id) REFERENCES comic_book_series(series_id)
);

-- COMIC BOOK WRITERS TABLE
CREATE TABLE writers (

    writer_id INT PRIMARY KEY AUTO_INCREMENT,
    writer_name VARCHAR(25) NOT NULL,
    series_id INT,
    FOREIGN KEY (series_id) REFERENCES comic_book_series(series_id)
);


-- CUSTOMER INFO TABLE
CREATE TABLE customers (

    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(15),
    last_name VARCHAR(15),
    phone_number BIGINT(20),
    email VARCHAR(20),
    address VARCHAR(50),
    city VARCHAR(20),
    zip_code VARCHAR(9),
    country VARCHAR(20)
);


-- COMIC BOOK ORDER TABLE
CREATE TABLE orders (

    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    comic_id INT,
    order_date DATE NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (comic_id) REFERENCES comic_books(comic_id)
);

-- ------------------------------------ Queries for inserting data into tables ---------------------------------------

-- Comic book Series
INSERT INTO comic_book_series(series_name, publishier) VALUES ("Avengers-(2018)", "MARVEL");
INSERT INTO comic_book_series(series_name, publishier) VALUES ("Infinity Wars", "MARVEL");
INSERT INTO comic_book_series(series_name, publishier) VALUES ("Captain America-(2018)", "MARVEL");
INSERT INTO comic_book_series(series_name, publishier) VALUES ("I Am Iron Man-(2023)", "MARVEL");
INSERT INTO comic_book_series(series_name, publishier) VALUES ("Thanos-(2016)", "MARVEL");
INSERT INTO comic_book_series(series_name, publishier) VALUES ("Ghost Rider-(2022)", "MARVEL");
INSERT INTO comic_book_series(series_name, publishier) VALUES ("Hulk-(2021)", "MARVEL");
INSERT INTO comic_book_series(series_name, publishier) VALUES ("King in Black", "MARVEL");
INSERT INTO comic_book_series(series_name, publishier) VALUES ("Eternals-(2021)", "MARVEL");
INSERT INTO comic_book_series(series_name, publishier) VALUES ("Fantastic Four-(2022)", "MARVEL");

INSERT INTO comic_book_series(series_name, publishier) VALUES ("Batman Killing Joke", "DC COMICS");
INSERT INTO comic_book_series(series_name, publishier) VALUES ("Superman-Lost", "DC COMICS");
INSERT INTO comic_book_series(series_name, publishier) VALUES ("Batman – Superman – World’s Finest", "DC COMICS");
INSERT INTO comic_book_series(series_name, publishier) VALUES ("Flash-(2019)", "DC COMICS");
INSERT INTO comic_book_series(series_name, publishier) VALUES ("Dark Nights: Metal-(2017)", "DC COMICS");
INSERT INTO comic_book_series(series_name, publishier) VALUES ("Dark Nights: Death Metal-(2020)", "DC COMICS");
INSERT INTO comic_book_series(series_name, publishier) VALUES ("The Authority-(1999)", "DC COMICS");
INSERT INTO comic_book_series(series_name, publishier) VALUES ("Shazam-(2021)", "DC COMICS");

-- Comic books
INSERT INTO comic_books(comic_name, series_id, issue_number, publish_date, price) VALUES ("Avenger #1", 1, 1, "2018-05-02", 4.99);
INSERT INTO comic_books(comic_name, series_id, issue_number, publish_date, price) VALUES ("Avenger #2", 1, 2, "2018-05-16", 3.99);
INSERT INTO comic_books(comic_name, series_id, issue_number, publish_date, price) VALUES ("Avenger #3", 1, 3, "2018-06-05", 4.99);
INSERT INTO comic_books(comic_name, series_id, issue_number, publish_date, price) VALUES ("Avenger #4", 1, 4, "2018-06-30", 4.99);
INSERT INTO comic_books(comic_name, series_id, issue_number, publish_date, price) VALUES ("Avenger #5", 1, 5, "2018-07-12", 4.99);
INSERT INTO comic_books(comic_name, series_id, issue_number, publish_date, price) VALUES ("Avenger #6", 1, 6, "2018-07-30", 3.49);
INSERT INTO comic_books(comic_name, series_id, issue_number, publish_date, price) VALUES ("Avenger #7", 1, 7, "2018-08-15", 4.99);
INSERT INTO comic_books(comic_name, series_id, issue_number, publish_date, price) VALUES ("Avenger #8", 1, 8, "2018-08-30", 3.49);
INSERT INTO comic_books(comic_name, series_id, issue_number, publish_date, price) VALUES ("Avenger #9", 1, 9, "2018-09-12", 4.99);
INSERT INTO comic_books(comic_name, series_id, issue_number, publish_date, price) VALUES ("Avenger #10", 1, 10, "2018-09-28", 4.99);

INSERT INTO comic_books(comic_name, series_id, issue_number, publish_date, price) VALUES ("Infinity Wars #1", 2, 1, "2018-08-01", 3.99);
INSERT INTO comic_books(comic_name, series_id, issue_number, publish_date, price) VALUES ("Infinity Wars #2", 2, 2, "2018-08-25", 4.49);
INSERT INTO comic_books(comic_name, series_id, issue_number, publish_date, price) VALUES ("Infinity Wars #3", 2, 3, "2018-09-09", 4.99);
INSERT INTO comic_books(comic_name, series_id, issue_number, publish_date, price) VALUES ("Infinity Wars #4", 2, 4, "2018-09-30", 3.99);
INSERT INTO comic_books(comic_name, series_id, issue_number, publish_date, price) VALUES ("Infinity Wars #5", 2, 5, "2018-10-14", 4.49);
INSERT INTO comic_books(comic_name, series_id, issue_number, publish_date, price) VALUES ("Infinity Wars #6", 2, 6, "2018-10-31", 3.99);

INSERT INTO comic_books(comic_name, series_id, issue_number, publish_date, price) VALUES ("Captain America #1", 3, 1, "2018-07-04", 4.99);
INSERT INTO comic_books(comic_name, series_id, issue_number, publish_date, price) VALUES ("Captain America #2", 3, 2, "2018-07-31", 4.99);
INSERT INTO comic_books(comic_name, series_id, issue_number, publish_date, price) VALUES ("Captain America #3", 3, 3, "2018-08-12", 4.99);
INSERT INTO comic_books(comic_name, series_id, issue_number, publish_date, price) VALUES ("Captain America #4", 3, 4, "2018-08-30", 4.99);
INSERT INTO comic_books(comic_name, series_id, issue_number, publish_date, price) VALUES ("Captain America #5", 3, 5, "2018-09-10", 4.99);

INSERT INTO comic_books(comic_name, series_id, issue_number, publish_date, price) VALUES ("I Am Iron Man #1", 4, 1, "2023-03-01", 6.99);
INSERT INTO comic_books(comic_name, series_id, issue_number, publish_date, price) VALUES ("I Am Iron Man #2", 4, 2, "2023-04-01", 6.99);
INSERT INTO comic_books(comic_name, series_id, issue_number, publish_date, price) VALUES ("I Am Iron Man #3", 4, 3, "2023-05-01", 6.99);

INSERT INTO comic_books(comic_name, series_id, issue_number, publish_date, price) VALUES ("Thanos #1", 5, 1, "2016-02-01", 3.99);
INSERT INTO comic_books(comic_name, series_id, issue_number, publish_date, price) VALUES ("Thanos #2", 5, 2, "2016-02-25", 3.99);
INSERT INTO comic_books(comic_name, series_id, issue_number, publish_date, price) VALUES ("Thanos #3", 5, 3, "2016-03-15", 3.99);
INSERT INTO comic_books(comic_name, series_id, issue_number, publish_date, price) VALUES ("Thanos #4", 5, 4, "2016-03-31", 3.99);
INSERT INTO comic_books(comic_name, series_id, issue_number, publish_date, price) VALUES ("Thanos #5", 5, 5, "2016-04-12", 3.99);
INSERT INTO comic_books(comic_name, series_id, issue_number, publish_date, price) VALUES ("Thanos #6", 5, 6, "2016-04-29", 3.99);
INSERT INTO comic_books(comic_name, series_id, issue_number, publish_date, price) VALUES ("Thanos #7", 5, 7, "2016-05-13", 3.99);

INSERT INTO comic_books(comic_name, series_id, issue_number, publish_date, price) VALUES ("Ghost Rider #1", 6, 1, "2022-05-01", 3.49);
INSERT INTO comic_books(comic_name, series_id, issue_number, publish_date, price) VALUES ("Ghost Rider #2", 6, 2, "2022-05-25", 3.49);
INSERT INTO comic_books(comic_name, series_id, issue_number, publish_date, price) VALUES ("Ghost Rider #3", 6, 3, "2022-06-05", 3.49);
INSERT INTO comic_books(comic_name, series_id, issue_number, publish_date, price) VALUES ("Ghost Rider #4", 6, 4, "2022-06-20", 3.49);
INSERT INTO comic_books(comic_name, series_id, issue_number, publish_date, price) VALUES ("Ghost Rider #5", 6, 5, "2022-07-07", 3.49);
INSERT INTO comic_books(comic_name, series_id, issue_number, publish_date, price) VALUES ("Ghost Rider #6", 6, 6, "2022-07-29", 3.49);

INSERT INTO comic_books(comic_name, series_id, issue_number, publish_date, price) VALUES ("Hulk #1", 7, 1, "2021-03-05", 4.49);
INSERT INTO comic_books(comic_name, series_id, issue_number, publish_date, price) VALUES ("Hulk #2", 7, 2, "2021-03-25", 4.49);
INSERT INTO comic_books(comic_name, series_id, issue_number, publish_date, price) VALUES ("Hulk #3", 7, 3, "2021-04-15", 4.49);
INSERT INTO comic_books(comic_name, series_id, issue_number, publish_date, price) VALUES ("Hulk #4", 7, 4, "2021-04-30", 4.49);
INSERT INTO comic_books(comic_name, series_id, issue_number, publish_date, price) VALUES ("Hulk #5", 7, 5, "2021-05-15", 4.49);
INSERT INTO comic_books(comic_name, series_id, issue_number, publish_date, price) VALUES ("Hulk #6", 7, 6, "2021-05-31", 4.49);
INSERT INTO comic_books(comic_name, series_id, issue_number, publish_date, price) VALUES ("Hulk #7", 7, 7, "2021-06-20", 4.49);

INSERT INTO comic_books(comic_name, series_id, issue_number, publish_date, price) VALUES ("King in Black #1", 8, 1, "2020-12-01", 5.49);
INSERT INTO comic_books(comic_name, series_id, issue_number, publish_date, price) VALUES ("King in Black #2", 8, 2, "2021-01-12", 5.49);
INSERT INTO comic_books(comic_name, series_id, issue_number, publish_date, price) VALUES ("King in Black #3", 8, 3, "2021-02-15", 5.49);
INSERT INTO comic_books(comic_name, series_id, issue_number, publish_date, price) VALUES ("King in Black #4", 8, 4, "2021-03-21", 5.49);
INSERT INTO comic_books(comic_name, series_id, issue_number, publish_date, price) VALUES ("King in Black #5", 8, 5, "2021-04-30", 5.49);

INSERT INTO comic_books(comic_name, series_id, issue_number, publish_date, price) VALUES ("Eternals #1", 9, 1, "2021-01-06", 4.49);
INSERT INTO comic_books(comic_name, series_id, issue_number, publish_date, price) VALUES ("Eternals #2", 9, 2, "2021-02-10", 4.49);
INSERT INTO comic_books(comic_name, series_id, issue_number, publish_date, price) VALUES ("Eternals #3", 9, 3, "2021-02-25", 4.49);
INSERT INTO comic_books(comic_name, series_id, issue_number, publish_date, price) VALUES ("Eternals #4", 9, 4, "2021-03-21", 4.49);
INSERT INTO comic_books(comic_name, series_id, issue_number, publish_date, price) VALUES ("Eternals #5", 9, 5, "2021-04-04", 4.49);
INSERT INTO comic_books(comic_name, series_id, issue_number, publish_date, price) VALUES ("Eternals #6", 9, 6, "2021-04-27", 4.49);
INSERT INTO comic_books(comic_name, series_id, issue_number, publish_date, price) VALUES ("Eternals #7", 9, 7, "2021-05-18", 4.49);
INSERT INTO comic_books(comic_name, series_id, issue_number, publish_date, price) VALUES ("Eternals #8", 9, 8, "2021-06-01", 4.49);
INSERT INTO comic_books(comic_name, series_id, issue_number, publish_date, price) VALUES ("Eternals #9", 9, 9, "2021-06-24", 4.49);
INSERT INTO comic_books(comic_name, series_id, issue_number, publish_date, price) VALUES ("Eternals #10", 9, 10, "2021-07-21", 4.49);
INSERT INTO comic_books(comic_name, series_id, issue_number, publish_date, price) VALUES ("Eternals #11", 9, 11, "2021-08-14", 4.49);
INSERT INTO comic_books(comic_name, series_id, issue_number, publish_date, price) VALUES ("Eternals #12", 9, 12, "2021-08-31", 4.49);

INSERT INTO comic_books(comic_name, series_id, issue_number, publish_date, price) VALUES ("Fantastic Four #1", 10, 1, "2022-11-02", 4.99);
INSERT INTO comic_books(comic_name, series_id, issue_number, publish_date, price) VALUES ("Fantastic Four #2", 10, 2, "2022-12-01", 4.99);
INSERT INTO comic_books(comic_name, series_id, issue_number, publish_date, price) VALUES ("Fantastic Four #3", 10, 3, "2023-01-11", 4.99);
INSERT INTO comic_books(comic_name, series_id, issue_number, publish_date, price) VALUES ("Fantastic Four #4", 10, 4, "2023-02-10", 4.99);
INSERT INTO comic_books(comic_name, series_id, issue_number, publish_date, price) VALUES ("Fantastic Four #5", 10, 5, "2023-03-22", 4.99);
INSERT INTO comic_books(comic_name, series_id, issue_number, publish_date, price) VALUES ("Fantastic Four #6", 10, 6, "2023-04-17", 4.99);
INSERT INTO comic_books(comic_name, series_id, issue_number, publish_date, price) VALUES ("Fantastic Four #7", 10, 7, "2023-05-05", 4.99);

INSERT INTO comic_books(comic_name, series_id, issue_number, publish_date, price) VALUES ("Batman Killing Joke", 11, 1, "2016-05-30", 2.49);

INSERT INTO comic_books(comic_name, series_id, issue_number, publish_date, price) VALUES ("Superman-Lost #1", 12, 1, "2023-02-05", 4.99);
INSERT INTO comic_books(comic_name, series_id, issue_number, publish_date, price) VALUES ("Superman-Lost #2", 12, 2, "2023-03-15", 4.99);

INSERT INTO comic_books(comic_name, series_id, issue_number, publish_date, price) VALUES ("Batman – Superman – World’s Finest #1", 13, 1, "2022-02-14", 3.99);
INSERT INTO comic_books(comic_name, series_id, issue_number, publish_date, price) VALUES ("Batman – Superman – World’s Finest #2", 13, 2, "2022-03-11", 3.99);
INSERT INTO comic_books(comic_name, series_id, issue_number, publish_date, price) VALUES ("Batman – Superman – World’s Finest #3", 13, 3, "2022-03-30", 3.99);
INSERT INTO comic_books(comic_name, series_id, issue_number, publish_date, price) VALUES ("Batman – Superman – World’s Finest #4", 13, 4, "2022-04-17", 3.99);
INSERT INTO comic_books(comic_name, series_id, issue_number, publish_date, price) VALUES ("Batman – Superman – World’s Finest #5", 13, 5, "2022-05-04", 3.99);
INSERT INTO comic_books(comic_name, series_id, issue_number, publish_date, price) VALUES ("Batman – Superman – World’s Finest #6", 13, 6, "2022-05-23", 3.99);
INSERT INTO comic_books(comic_name, series_id, issue_number, publish_date, price) VALUES ("Batman – Superman – World’s Finest #7", 13, 7, "2022-06-07", 3.99);
INSERT INTO comic_books(comic_name, series_id, issue_number, publish_date, price) VALUES ("Batman – Superman – World’s Finest #8", 13, 8, "2022-06-25", 3.99);
INSERT INTO comic_books(comic_name, series_id, issue_number, publish_date, price) VALUES ("Batman – Superman – World’s Finest #9", 13, 9, "2022-07-10", 3.99);
INSERT INTO comic_books(comic_name, series_id, issue_number, publish_date, price) VALUES ("Batman – Superman – World’s Finest #10", 13, 10, "2022-07-26", 3.99);

INSERT INTO comic_books(comic_name, series_id, issue_number, publish_date, price) VALUES ("Flash #50", 14, 50, "2019-01-25", 3.49);
INSERT INTO comic_books(comic_name, series_id, issue_number, publish_date, price) VALUES ("Flash #51", 14, 51, "2019-02-10", 3.49);
INSERT INTO comic_books(comic_name, series_id, issue_number, publish_date, price) VALUES ("Flash #52", 14, 52, "2019-02-27", 3.49);
INSERT INTO comic_books(comic_name, series_id, issue_number, publish_date, price) VALUES ("Flash #53", 14, 53, "2019-03-25", 3.49);
INSERT INTO comic_books(comic_name, series_id, issue_number, publish_date, price) VALUES ("Flash #54", 14, 54, "2019-04-19", 3.49);
INSERT INTO comic_books(comic_name, series_id, issue_number, publish_date, price) VALUES ("Flash #55", 14, 55, "2019-05-15", 3.49);
INSERT INTO comic_books(comic_name, series_id, issue_number, publish_date, price) VALUES ("Flash #56", 14, 56, "2019-05-31", 3.49);
INSERT INTO comic_books(comic_name, series_id, issue_number, publish_date, price) VALUES ("Flash #57", 14, 57, "2019-06-17", 3.49);
INSERT INTO comic_books(comic_name, series_id, issue_number, publish_date, price) VALUES ("Flash #58", 14, 58, "2019-06-29", 3.49);
INSERT INTO comic_books(comic_name, series_id, issue_number, publish_date, price) VALUES ("Flash #59", 14, 59, "2019-07-13", 3.49);
INSERT INTO comic_books(comic_name, series_id, issue_number, publish_date, price) VALUES ("Flash #60", 14, 60, "2019-07-29", 3.49);

INSERT INTO comic_books(comic_name, series_id, issue_number, publish_date, price) VALUES ("Dark Nights: Metal #1", 15, 1, "2017-10-03", 4.49);
INSERT INTO comic_books(comic_name, series_id, issue_number, publish_date, price) VALUES ("Dark Nights: Metal #2", 15, 2, "2017-11-11", 4.49);
INSERT INTO comic_books(comic_name, series_id, issue_number, publish_date, price) VALUES ("Dark Nights: Metal #3", 15, 3, "2017-12-15", 4.49);
INSERT INTO comic_books(comic_name, series_id, issue_number, publish_date, price) VALUES ("Dark Nights: Metal #4", 15, 4, "2018-01-19", 4.49);
INSERT INTO comic_books(comic_name, series_id, issue_number, publish_date, price) VALUES ("Dark Nights: Metal #5", 15, 5, "2018-02-28", 4.49);
INSERT INTO comic_books(comic_name, series_id, issue_number, publish_date, price) VALUES ("Dark Nights: Metal #6", 15, 6, "2018-04-21", 4.49);

INSERT INTO comic_books(comic_name, series_id, issue_number, publish_date, price) VALUES ("Dark Nights: Death Metal #1", 16, 1, "2020-08-14", 5.49);
INSERT INTO comic_books(comic_name, series_id, issue_number, publish_date, price) VALUES ("Dark Nights: Death Metal #2", 16, 2, "2020-09-24", 5.49);
INSERT INTO comic_books(comic_name, series_id, issue_number, publish_date, price) VALUES ("Dark Nights: Death Metal #3", 16, 3, "2020-10-31", 5.49);
INSERT INTO comic_books(comic_name, series_id, issue_number, publish_date, price) VALUES ("Dark Nights: Death Metal #4", 16, 4, "2020-11-17", 5.49);
INSERT INTO comic_books(comic_name, series_id, issue_number, publish_date, price) VALUES ("Dark Nights: Death Metal #5", 16, 5, "2021-01-25", 5.49);
INSERT INTO comic_books(comic_name, series_id, issue_number, publish_date, price) VALUES ("Dark Nights: Death Metal #6", 16, 6, "2021-03-13", 5.49);
INSERT INTO comic_books(comic_name, series_id, issue_number, publish_date, price) VALUES ("Dark Nights: Death Metal #7", 16, 7, "2021-05-26", 5.49);

INSERT INTO comic_books(comic_name, series_id, issue_number, publish_date, price) VALUES ("The Authority #1", 17, 1, "1999-05-26", 1.99);
INSERT INTO comic_books(comic_name, series_id, issue_number, publish_date, price) VALUES ("The Authority #2", 17, 2, "1999-06-20", 1.99);
INSERT INTO comic_books(comic_name, series_id, issue_number, publish_date, price) VALUES ("The Authority #3", 17, 3, "1999-08-21", 1.99);
INSERT INTO comic_books(comic_name, series_id, issue_number, publish_date, price) VALUES ("The Authority #4", 17, 4, "1999-10-31", 1.99);
INSERT INTO comic_books(comic_name, series_id, issue_number, publish_date, price) VALUES ("The Authority #5", 17, 5, "2001-01-17", 1.99);
INSERT INTO comic_books(comic_name, series_id, issue_number, publish_date, price) VALUES ("The Authority #6", 17, 6, "2001-02-27", 1.99);
INSERT INTO comic_books(comic_name, series_id, issue_number, publish_date, price) VALUES ("The Authority #7", 17, 7, "2001-05-25", 1.99);
INSERT INTO comic_books(comic_name, series_id, issue_number, publish_date, price) VALUES ("The Authority #8", 17, 8, "2001-06-09", 1.99);
INSERT INTO comic_books(comic_name, series_id, issue_number, publish_date, price) VALUES ("The Authority #9", 17, 8, "2001-08-17", 1.99);
INSERT INTO comic_books(comic_name, series_id, issue_number, publish_date, price) VALUES ("The Authority #10", 17, 10, "2001-10-21", 1.99);

INSERT INTO comic_books(comic_name, series_id, issue_number, publish_date, price) VALUES ("Shazam #1", 18, 1, "2021-09-01", 3.99);
INSERT INTO comic_books(comic_name, series_id, issue_number, publish_date, price) VALUES ("Shazam #2", 18, 2, "2021-09-21", 3.99);
INSERT INTO comic_books(comic_name, series_id, issue_number, publish_date, price) VALUES ("Shazam #3", 18, 3, "2021-10-15", 3.99);
INSERT INTO comic_books(comic_name, series_id, issue_number, publish_date, price) VALUES ("Shazam #4", 18, 4, "2021-11-20", 3.99);





-- Comic book writers
INSERT INTO writers(writer_name, series_id) VALUES ("Jason Aaron", 1);
INSERT INTO writers(writer_name, series_id) VALUES ("Gerry Duggan", 2);
INSERT INTO writers(writer_name, series_id) VALUES ("Ta-Nehisi Coates", 3);
INSERT INTO writers(writer_name, series_id) VALUES ("Murewa Ayodele", 4);
INSERT INTO writers(writer_name, series_id) VALUES ("Jeff Lemire", 5);
INSERT INTO writers(writer_name, series_id) VALUES ("Benjamin Percy", 6);
INSERT INTO writers(writer_name, series_id) VALUES ("Donny Cates", 7);
INSERT INTO writers(writer_name, series_id) VALUES ("Donny Cates", 8);
INSERT INTO writers(writer_name, series_id) VALUES ("Kieron Gillen", 9);
INSERT INTO writers(writer_name, series_id) VALUES ("Ryan North", 10);

INSERT INTO writers(writer_name, series_id) VALUES ("Alan Moore", 11);
INSERT INTO writers(writer_name, series_id) VALUES ("Christopher Priest", 12);
INSERT INTO writers(writer_name, series_id) VALUES ("Mark Waid", 13);
INSERT INTO writers(writer_name, series_id) VALUES ("Joshua Williamson", 14);
INSERT INTO writers(writer_name, series_id) VALUES ("Scott Snyder", 15);
INSERT INTO writers(writer_name, series_id) VALUES ("Scott Snyder", 16);
INSERT INTO writers(writer_name, series_id) VALUES ("Warren Ellis", 17);
INSERT INTO writers(writer_name, series_id) VALUES ("Tim Sheridan", 18);

-- Customer details
INSERT INTO customers(first_name, last_name, phone_number, email, address, city, zip_code, country) VALUES ("Rishabh", "Mer", "3467859459", "rishabh@gmail.com", "Grangegorman Lower, dublin 7", "Dublin", "D07 YE81", "Ireland");
INSERT INTO customers(first_name, last_name, phone_number, email, address, city, zip_code, country) VALUES ("Albert", "Ress", "9540586734", "albert@gmail.com", "dublin 8", "Dublin", "D08 AE81", "Ireland");
INSERT INTO customers(first_name, last_name, phone_number, email, address, city, zip_code, country) VALUES ("Thanos", "Titan", "8967456789", "colom@gmail.com", "Santuary", "Dublin", "D11 QQ22", "Ireland");
INSERT INTO customers(first_name, last_name, phone_number, email, address, city, zip_code, country) VALUES ("Jess", "Nolan", "8679048566", "jess@gmail.com", "dublin 10", "Dublin", "D10 EE21", "Ireland");
INSERT INTO customers(first_name, last_name, phone_number, email, address, city, zip_code, country) VALUES ("Alex", "Wright", "8956756789", "alex@gmail.com", "dublin 22", "Dublin", "D22 AA81", "Ireland");
INSERT INTO customers(first_name, last_name, phone_number, email, address, city, zip_code, country) VALUES ("Tony", "Stark", "8967512345", "tony@gmail.com", "dublin 13", "Dublin", "D13 YE66", "Ireland");
INSERT INTO customers(first_name, last_name, phone_number, email, address, city, zip_code, country) VALUES ("Steve", "Rogers", "8867543521", "steve@gmail.com", "dublin 20", "Dublin", "D20 DD77", "Ireland");
INSERT INTO customers(first_name, last_name, phone_number, email, address, city, zip_code, country) VALUES ("Mike", "Golone", "8745768934", "mike@gmail.com", "dublin 19", "Dublin", "D19 BV22", "Ireland");
INSERT INTO customers(first_name, last_name, phone_number, email, address, city, zip_code, country) VALUES ("Peter", "Parker", "8234567812", "peter@gmail.com", "dublin 15", "Dublin", "D15 WE51", "Ireland");
INSERT INTO customers(first_name, last_name, phone_number, email, address, city, zip_code, country) VALUES ("Parthiv", "Prabhakar", "87645824845", "parthiv@gmail.com", "dublin 13", "Dublin", "D13 YE67", "Ireland");
INSERT INTO customers(first_name, last_name, phone_number, email, address, city, zip_code, country) VALUES ("Robert", "Wales", "8960483582", "robert@gmail.com", "Ballinfoyle", "Galway", "H91", "Ireland");
INSERT INTO customers(first_name, last_name, phone_number, email, address, city, zip_code, country) VALUES ("Tyrion", "Lanister", "9867489992", "tyrion@gmail.com", "Lower Dangan", "Galway", "H91", "Ireland");
INSERT INTO customers(first_name, last_name, phone_number, email, address, city, zip_code, country) VALUES ("Tywin", "Lanister", "9867583848", "tywin@gmail.com", "Murrough", "Galway", "H91", "Ireland");
INSERT INTO customers(first_name, last_name, phone_number, email, address, city, zip_code, country) VALUES ("Shey", "Ryan", "8960784735", "shey@gmail.com", "Newcastle", "Galway", "H91", "Ireland");
INSERT INTO customers(first_name, last_name, phone_number, email, address, city, zip_code, country) VALUES ("Brie", "Larson", "8967385845", "brie@gmail.com", "Westside", "Galway", "H91", "Ireland");
INSERT INTO customers(first_name, last_name, phone_number, email, address, city, zip_code, country) VALUES ("Wanda", "Maximoff", "8942325566", "wanda@gmail.com", "dublin 17", "Dublin", "D17 YE81", "Ireland");
INSERT INTO customers(first_name, last_name, phone_number, email, address, city, zip_code, country) VALUES ("Natasha", "Romanoff", "8999687011", "natasha@gmail.com", "dublin 18", "Dublin", "D18 AW81", "Ireland");
INSERT INTO customers(first_name, last_name, phone_number, email, address, city, zip_code, country) VALUES ("Nick", "Fury", "8900055666", "nick@gmail.com", "dublin 4", "Dublin", "D04 QQ81", "Ireland");
INSERT INTO customers(first_name, last_name, phone_number, email, address, city, zip_code, country) VALUES ("Ross", "Geller", "8912345670", "ross@gmail.com", "dublin 6", "Dublin", "D06 CT81", "Ireland");
INSERT INTO customers(first_name, last_name, phone_number, email, address, city, zip_code, country) VALUES ("Joey", "Tribbiani", "8945678912", "joey@gmail.com", "dublin 7", "Dublin", "D07 EY89", "Ireland");

-- Customer order
INSERT INTO orders(customer_id, comic_id, order_date) VALUES (1,1,"2019-02-01");
INSERT INTO orders(customer_id, comic_id, order_date) VALUES (1,2,"2019-03-22");
INSERT INTO orders(customer_id, comic_id, order_date) VALUES (1,3,"2019-03-22");
INSERT INTO orders(customer_id, comic_id, order_date) VALUES (1,4,"2019-05-01");
INSERT INTO orders(customer_id, comic_id, order_date) VALUES (1,5,"2019-06-02");
INSERT INTO orders(customer_id, comic_id, order_date) VALUES (2,1,"2020-11-12");
INSERT INTO orders(customer_id, comic_id, order_date) VALUES (2,2,"2020-12-25");
INSERT INTO orders(customer_id, comic_id, order_date) VALUES (2,3,"2020-12-25");
INSERT INTO orders(customer_id, comic_id, order_date) VALUES (2,4,"2020-12-25");
INSERT INTO orders(customer_id, comic_id, order_date) VALUES (3,11,"2018-08-01");
INSERT INTO orders(customer_id, comic_id, order_date) VALUES (3,12,"2018-08-25");
INSERT INTO orders(customer_id, comic_id, order_date) VALUES (3,13,"2018-09-09");
INSERT INTO orders(customer_id, comic_id, order_date) VALUES (3,14,"2018-09-30");
INSERT INTO orders(customer_id, comic_id, order_date) VALUES (3,15,"2018-10-14");
INSERT INTO orders(customer_id, comic_id, order_date) VALUES (3,16,"2018-10-31");
INSERT INTO orders(customer_id, comic_id, order_date) VALUES (3,22,"2023-05-03");
INSERT INTO orders(customer_id, comic_id, order_date) VALUES (3,23,"2023-05-03");
INSERT INTO orders(customer_id, comic_id, order_date) VALUES (4,1,"2020-07-07");
INSERT INTO orders(customer_id, comic_id, order_date) VALUES (4,2,"2020-10-21");
INSERT INTO orders(customer_id, comic_id, order_date) VALUES (4,26,"2018-02-02");
INSERT INTO orders(customer_id, comic_id, order_date) VALUES (4,27,"2018-04-23");
INSERT INTO orders(customer_id, comic_id, order_date) VALUES (4,28,"2018-05-01");
INSERT INTO orders(customer_id, comic_id, order_date) VALUES (4,33,"2023-01-10");
INSERT INTO orders(customer_id, comic_id, order_date) VALUES (4,35,"2023-05-01");
INSERT INTO orders(customer_id, comic_id, order_date) VALUES (4,36,"2023-05-02");
INSERT INTO orders(customer_id, comic_id, order_date) VALUES (4,51,"2022-04-20");
INSERT INTO orders(customer_id, comic_id, order_date) VALUES (4,50,"2022-04-21");
INSERT INTO orders(customer_id, comic_id, order_date) VALUES (4,52,"2022-04-25");
INSERT INTO orders(customer_id, comic_id, order_date) VALUES (4,60,"2022-05-31");
INSERT INTO orders(customer_id, comic_id, order_date) VALUES (5,45,"2021-01-01");
INSERT INTO orders(customer_id, comic_id, order_date) VALUES (5,46,"2021-02-12");
INSERT INTO orders(customer_id, comic_id, order_date) VALUES (5,47,"2021-03-14");
INSERT INTO orders(customer_id, comic_id, order_date) VALUES (5,48,"2021-04-21");
INSERT INTO orders(customer_id, comic_id, order_date) VALUES (5,49,"2021-05-05");
INSERT INTO orders(customer_id, comic_id, order_date) VALUES (5,62,"2022-12-25");
INSERT INTO orders(customer_id, comic_id, order_date) VALUES (5,63,"2022-12-25");
INSERT INTO orders(customer_id, comic_id, order_date) VALUES (5,64,"2023-03-30");
INSERT INTO orders(customer_id, comic_id, order_date) VALUES (5,65,"2023-03-30");
INSERT INTO orders(customer_id, comic_id, order_date) VALUES (5,66,"2023-03-30");
INSERT INTO orders(customer_id, comic_id, order_date) VALUES (5,22,"2023-04-05");
INSERT INTO orders(customer_id, comic_id, order_date) VALUES (5,1,"2021-01-01");
INSERT INTO orders(customer_id, comic_id, order_date) VALUES (5,2,"2021-01-01");
INSERT INTO orders(customer_id, comic_id, order_date) VALUES (5,3,"2021-01-01");
INSERT INTO orders(customer_id, comic_id, order_date) VALUES (5,4,"2021-01-01");
INSERT INTO orders(customer_id, comic_id, order_date) VALUES (5,5,"2021-01-01");
INSERT INTO orders(customer_id, comic_id, order_date) VALUES (5,6,"2021-01-01");
INSERT INTO orders(customer_id, comic_id, order_date) VALUES (5,7,"2021-01-01");

INSERT INTO orders(customer_id, comic_id, order_date) VALUES (6,1,"2016-05-30");
INSERT INTO orders(customer_id, comic_id, order_date) VALUES (12,1,"2016-05-30");
INSERT INTO orders(customer_id, comic_id, order_date) VALUES (10,1,"2016-05-30");
INSERT INTO orders(customer_id, comic_id, order_date) VALUES (13,1,"2016-05-30");
INSERT INTO orders(customer_id, comic_id, order_date) VALUES (20,1,"2016-05-30");
INSERT INTO orders(customer_id, comic_id, order_date) VALUES (14,1,"2016-05-30");
INSERT INTO orders(customer_id, comic_id, order_date) VALUES (9,1,"2016-05-30");
INSERT INTO orders(customer_id, comic_id, order_date) VALUES (13,1,"2016-05-30");
INSERT INTO orders(customer_id, comic_id, order_date) VALUES (20,88,"2021-03-05");
INSERT INTO orders(customer_id, comic_id, order_date) VALUES (20,89,"2021-04-20");
INSERT INTO orders(customer_id, comic_id, order_date) VALUES (17,100,"2022-09-20");
INSERT INTO orders(customer_id, comic_id, order_date) VALUES (12,33,"2023-01-01");
INSERT INTO orders(customer_id, comic_id, order_date) VALUES (7,67,"2023-05-01");
INSERT INTO orders(customer_id, comic_id, order_date) VALUES (9,119,"2022-05-19");
INSERT INTO orders(customer_id, comic_id, order_date) VALUES (18,101,"2022-12-25");
INSERT INTO orders(customer_id, comic_id, order_date) VALUES (19,90,"2021-10-11");
INSERT INTO orders(customer_id, comic_id, order_date) VALUES (7,77,"2023-04-27");
INSERT INTO orders(customer_id, comic_id, order_date) VALUES (2,97,"2022-12-01");
INSERT INTO orders(customer_id, comic_id, order_date) VALUES (3,112,"2022-01-01");
INSERT INTO orders(customer_id, comic_id, order_date) VALUES (11,108,"2020-11-17");
INSERT INTO orders(customer_id, comic_id, order_date) VALUES (13,109,"2017-07-06");
INSERT INTO orders(customer_id, comic_id, order_date) VALUES (15,111,"2023-02-25");
INSERT INTO orders(customer_id, comic_id, order_date) VALUES (15,112,"2023-02-25");
INSERT INTO orders(customer_id, comic_id, order_date) VALUES (15,113,"2023-02-25");
INSERT INTO orders(customer_id, comic_id, order_date) VALUES (15,114,"2023-02-25");
INSERT INTO orders(customer_id, comic_id, order_date) VALUES (9,55,"2021-04-04");
INSERT INTO orders(customer_id, comic_id, order_date) VALUES (18,82,"2019-01-25");
INSERT INTO orders(customer_id, comic_id, order_date) VALUES (19,71,"2023-05-04");
INSERT INTO orders(customer_id, comic_id, order_date) VALUES (20,20,"2018-08-30");
INSERT INTO orders(customer_id, comic_id, order_date) VALUES (20,21,"2018-09-10");
INSERT INTO orders(customer_id, comic_id, order_date) VALUES (20,22,"2023-03-01");
INSERT INTO orders(customer_id, comic_id, order_date) VALUES (1,17,"2022-10-21");
INSERT INTO orders(customer_id, comic_id, order_date) VALUES (1,18,"2022-10-21");
INSERT INTO orders(customer_id, comic_id, order_date) VALUES (1,19,"2022-10-21");
INSERT INTO orders(customer_id, comic_id, order_date) VALUES (1,20,"2022-10-21");
INSERT INTO orders(customer_id, comic_id, order_date) VALUES (1,21,"2022-10-21");
INSERT INTO orders(customer_id, comic_id, order_date) VALUES (1,11,"2022-10-21");
INSERT INTO orders(customer_id, comic_id, order_date) VALUES (1,12,"2022-10-21");
INSERT INTO orders(customer_id, comic_id, order_date) VALUES (1,13,"2022-10-21");
INSERT INTO orders(customer_id, comic_id, order_date) VALUES (1,14,"2022-10-21");
INSERT INTO orders(customer_id, comic_id, order_date) VALUES (1,15,"2022-10-21");
INSERT INTO orders(customer_id, comic_id, order_date) VALUES (1,16,"2022-10-21");


-- -------------------------------------------------------------- VIEWS ----------------------------------------------------------------------
-- Creating view for total amount spend on comic books by each customer 
CREATE VIEW customer_purchases AS
SELECT 
    customers.customer_id,
    CONCAT(customers.first_name, ' ',  customers.last_name) AS customer_name,
    FORMAT(SUM(comic_books.price), 2) AS total_spent
FROM 
    customers
    JOIN orders ON customers.customer_id = orders.customer_id
    JOIN comic_books ON orders.comic_id = comic_books.comic_id
GROUP BY
    customers.customer_id;

-- Creating view for total comic book written by each writer
CREATE VIEW comic_count_by_writers AS
SELECT
    writers.writer_name,
    COUNT(comic_id) AS comic_count
FROM
    writers
    JOIN comic_book_series ON writers.series_id = comic_book_series.series_id
    JOIN comic_books ON comic_book_series.series_id = comic_books.series_id
GROUP BY
    writers.writer_id;

-- Creating view for customer buying comic books which are published on same date
CREATE VIEW same_day_purchase AS
SELECT
    CONCAT(customers.first_name, ' ',  customers.last_name) AS customer_name,
    CONCAT(comic_books.comic_name) AS comic_books,
    orders.order_date,
    comic_books.publish_date
FROM
    customers
    JOIN orders ON customers.customer_id = orders.customer_id
    JOIN comic_books ON orders.comic_id = comic_books.comic_id
WHERE
    orders.order_date = comic_books.publish_date;


-- comic sell by publisher
CREATE VIEW comic_book_sold_publisher AS
SELECT
    comic_book_series.publishier,
    COUNT(orders.comic_id) AS total_comic_sold
FROM
    comic_book_series
    JOIN comic_books ON comic_book_series.series_id = comic_books.series_id
    JOIN orders ON comic_books.comic_id = orders.comic_id 
GROUP BY
    comic_book_series.publishier;


-- ------------------------------------------------------------- PL/SQL -------------------------------------------------------------------

-- Procedure for generating revenue
CREATE PROCEDURE `calculate_total_revenue`()
BEGIN
    DECLARE total_revenue FLOAT(10,2);
    SELECT SUM(comic_books.price) INTO total_revenue FROM comic_books
    JOIN orders ON comic_books.comic_id = orders.comic_id;
    SELECT CONCAT('Total revenue generated by selling the comics: $', total_revenue) AS 'Total Revenue';
END

-- Procedure query for genreating top-selling comic book series
CREATE PROCEDURE `get_top_selling_series`(IN num_results INT)
BEGIN
    SELECT 
        comic_book_series.series_name,
        COUNT(orders.comic_id) AS total_sold
    FROM 
        comic_book_series
        JOIN comic_books ON comic_book_series.series_id = comic_books.series_id
        JOIN orders ON comic_books.comic_id = orders.comic_id
    GROUP BY 
        comic_book_series.series_id
    ORDER BY 
        total_sold DESC
    LIMIT num_results;
END

-- Procedure query for generating top-customer purchasing comic books
CREATE PROCEDURE `get_top_customer`()
BEGIN
    SELECT 
        CONCAT(customers.first_name, ' ', customers.last_name) AS customer_name,
        COUNT(orders.order_id) AS total_orders
    FROM 
        customers
        JOIN orders ON customers.customer_id = orders.customer_id
    GROUP BY 
        customers.customer_id
    ORDER BY 
        total_orders DESC
    LIMIT 1;
END;

-- Procedure query for generating total comic by writers
CREATE PROCEDURE `get_comic_count_by_writer`()
BEGIN
    SELECT
        writers.writer_name,
        COUNT(comic_books.comic_id) AS comic_count
    FROM
        writers
        JOIN comic_book_series ON writers.series_id = comic_book_series.series_id
        JOIN comic_books ON comic_book_series.series_id = comic_books.series_id
        JOIN orders ON comic_books.comic_id = orders.comic_id
    GROUP BY
        writers.writer_name;
END;

-- -------------------------------------- Example Queries ------------------------------------------
-- Get the top 10 best-selling comic books in terms of revenue generated
SELECT 
    comic_books.comic_name, comic_books.price, 
    COUNT(*) AS total_sales, 
    SUM(comic_books.price) AS total_revenue 
FROM comic_books
    JOIN orders ON comic_books.comic_id = orders.comic_id
GROUP BY comic_books.comic_id
ORDER BY total_revenue DESC
LIMIT 10;

-- Get the total revenue generated from comic book sales by each month by year
SELECT 
    DATE_FORMAT(orders.order_date, '%Y-%m') AS month, 
    FORMAT(SUM(comic_books.price), 2) AS total_revenue
FROM comic_books
    JOIN orders ON comic_books.comic_id = orders.comic_id
GROUP BY DATE_FORMAT(orders.order_date, '%Y-%m')
ORDER BY month;

-- List of comic not purchased by customer
SELECT comic_books.comic_id, comic_books.comic_name
FROM comic_books
LEFT JOIN orders ON comic_books.comic_id = orders.comic_id
WHERE orders.order_id IS NULL;

-- Customers who purchased whole comic book series
SELECT DISTINCT
    customers.customer_id,
    CONCAT(customers.first_name, ' ', customers.last_name) AS customer_name
FROM
    customers
    JOIN orders ON customers.customer_id = orders.customer_id
    JOIN comic_books ON orders.comic_id = comic_books.comic_id
    JOIN comic_book_series ON comic_books.series_id = comic_book_series.series_id
WHERE
    comic_book_series.series_name = 'Infinity Wars' 
    AND customers.customer_id NOT IN (
        SELECT DISTINCT
            customers.customer_id
        FROM
            customers
            JOIN orders ON customers.customer_id = orders.customer_id
            JOIN comic_books ON orders.comic_id = comic_books.comic_id
            JOIN comic_book_series ON comic_books.series_id = comic_book_series.series_id
        WHERE
            comic_book_series.series_name = 'Infinity Wars' 
        GROUP BY
            customers.customer_id
        HAVING
            COUNT(DISTINCT comic_books.comic_id) < (SELECT COUNT(*) FROM 
            comic_books WHERE series_id = comic_book_series.series_id)
    );
