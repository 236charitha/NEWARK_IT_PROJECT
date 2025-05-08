
-- CUSTOMER
use mydmsdapp;
-- create queries  

-- insert queries 
INSERT INTO CUSTOMER (cid, FName, LName, Email, Address, Phone, status, credit_line) VALUES

(2, 'Bob', 'Smith', 'bob@example.com', '456 Oak St', '2222222222', 'SILVER', 1500.00),
(3, 'Charlie', 'Johnson', 'charlie@example.com', '789 Pine St', '33333', 'GOLD', 800.00),
(4, 'Diana', 'Lee', 'diana@example.com', '321 Birch St', '4444444444', 'GOLD', 5000.00),
(5, 'Evan', 'Wright', 'evan@example.com', '654 Cedar St', '5555555555', 'SILVER', 2000.00),
(6, 'Fiona', 'Hall', 'fiona@example.com', '987 Elm St', '6666666666', 'GOLD', 700.00),
(7, 'George', 'Young', 'george@example.com', '135 Spruce St', '7777777777', 'GOLD', 4000.00),
(8, 'Hannah', 'Adams', 'hannah@example.com', '246 Fir St', '8888888888', 'SILVER', 1800.00),
(9, 'Ian', 'Clark', 'ian@example.com', '369 Poplar St', '9999999999', 'GOLD', 950.00),
(10, 'Jane', 'Davis', 'jane@example.com', '147 Willow St', '0000000000', 'GOLD', 3500.00);

-- CREDIT CARD
INSERT INTO credit_card (cc_number, sec_number, owner_name, cc_type, bil_address, exp_date, stored_cardcid) VALUES
('1111222233334444', '123', 'Alice Brown', 'VISA', '123 Maple St', '2026-05-01', 1),
('2222333344445555', '234', 'Bob Smith', 'MASTERCARD', '456 Oak St', '2027-06-01', 2),
('3333444455556666', '345', 'Charlie Johnson', 'AMEX', '789 Pine St', '2028-07-01', 3),
('4444555566667777', '456', 'Diana Lee', 'VISA', '321 Birch St', '2029-08-01', 4),
('5555666677778888', '567', 'Evan Wright', 'MASTERCARD', '654 Cedar St', '2030-09-01', 5),
('6666777788889999', '678', 'Fiona Hall', 'AMEX', '987 Elm St', '2031-10-01', 6),
('7777888899990000', '789', 'George Young', 'VISA', '135 Spruce St', '2032-11-01', 7),
('8888999900001111', '890', 'Hannah Adams', 'MASTERCARD', '246 Fir St', '2033-12-01', 8),
('9999000011112222', '901', 'Ian Clark', 'AMEX', '369 Poplar St', '2034-01-01', 9),
('0000111122223333', '012', 'Jane Davis', 'VISA', '147 Willow St', '2035-02-01', 10);

select * from shipping_address;

-- SHIPPING ADDRESS
INSERT INTO shipping_address (sa_name, cid, recepient_name, street, s_number, city, zip, state, country) VALUES
('Home', 1, 'Alice Brown', '123 Maple St', 'A1', 'Newark', '07101', 'NJ', 'USA'),
('Office', 2, 'Bob Smith', '456 Oak St', 'B2', 'Jersey City', '07302', 'NJ', 'USA'),
('Home', 3, 'Charlie Johnson', '789 Pine St', 'C3', 'Hoboken', '07030', 'NJ', 'USA'),
('Home', 4, 'Diana Lee', '321 Birch St', 'D4', 'Newark', '07102', 'NJ', 'USA'),
('Home', 5, 'Evan Wright', '654 Cedar St', 'E5', 'Jersey City', '07310', 'NJ', 'USA'),
('Home', 6, 'Fiona Hall', '987 Elm St', 'F6', 'Hoboken', '07094', 'NJ', 'USA'),
('Home', 7, 'George Young', '135 Spruce St', 'G7', 'Newark', '07104', 'NJ', 'USA'),
('Home', 8, 'Hannah Adams', '246 Fir St', 'H8', 'Jersey City', '07307', 'NJ', 'USA'),
('Home', 9, 'Ian Clark', '369 Poplar St', 'I9', 'Hoboken', '07086', 'NJ', 'USA'),
('Home', 10, 'Jane Davis', '147 Willow St', 'J10', 'Newark', '07105', 'NJ', 'USA');

-- BASKET
INSERT INTO basket (bid, cid) VALUES
(1, 1), (2, 2), (3, 3), (4, 4), (5, 5),
(6, 6), (7, 7), (8, 8), (9, 9), (10, 10);

-- PRODUCT
INSERT INTO product (pid, p_name, p_price, description, p_quantity, product_type) VALUES
(1, 'Dell XPS', 1200.00, 'High performance laptop', 10, 'Laptop'),
(2, 'MacBook Pro', 2200.00, 'Apple laptop', 8, 'Laptop'),
(3, 'HP Pavilion', 750.00, 'Affordable laptop', 15, 'Laptop'),
(4, 'iMac', 1800.00, 'Apple desktop', 5, 'Computer'),
(5, 'Lenovo ThinkCentre', 950.00, 'Compact desktop', 12, 'Computer'),
(6, 'Canon Pixma', 150.00, 'Color printer', 20, 'Printer'),
(7, 'HP LaserJet', 250.00, 'Black and white printer', 18, 'Printer'),
(8, 'Epson EcoTank', 300.00, 'Ink-efficient printer', 14, 'Printer'),
(9, 'Acer Aspire', 650.00, 'Budget laptop', 10, 'Laptop'),
(10, 'ASUS ROG', 1600.00, 'Gaming laptop', 6, 'Laptop');

-- APPEARS_IN
INSERT INTO appears_in (bid, pid, quantity, price) VALUES
(1, 1, 1, 1200.00), (2, 2, 1, 2200.00), (3, 3, 2, 1500.00), (4, 4, 1, 1800.00), (5, 5, 1, 950.00),
(6, 6, 3, 450.00), (7, 7, 1, 250.00), (8, 8, 2, 600.00), (9, 9, 1, 650.00), (10, 10, 1, 1600.00);



-- TRANSACTION
INSERT INTO transaction (tid,date, bid, cc_number, total_amount) VALUES
(1,'2025-05-01', 1, '1111222233334444', 1200.00),
(2,'2025-05-02', 2, '2222333344445555', 2200.00),
(3,'2025-05-03', 3, '3333444455556666', 1500.00),
(4,'2025-05-04', 4, '4444555566667777', 1800.00),
(5,'2025-05-05', 5, '5555666677778888', 950.00),
(6,'2025-05-06', 6, '6666777788889999', 450.00),
(7,'2025-05-07', 7, '7777888899990000', 250.00),
(8,'2025-05-08', 8, '8888999900001111', 600.00),
(9,'2025-05-09', 9, '9999000011112222', 650.00),
(10,'2025-05-10', 10, '0000111122223333', 1600.00);
-- drop table transaction;
CREATE TABLE transaction (
    tid INT AUTO_INCREMENT PRIMARY KEY,
    date DATE,
    bid INT NOT NULL,
    cc_number VARCHAR(20) NOT NULL,
    total_amount DOUBLE,

    CONSTRAINT fk_transaction_basket FOREIGN KEY (bid) REFERENCES basket(bid),
    CONSTRAINT fk_transaction_credit_card FOREIGN KEY (cc_number) REFERENCES credit_card(cc_number)
);

select * from appears_in;

SELECT * FROM b;
use mydmsdapp;
SELECT * FROM transaction WHERE bid='4';
ALTER TABLE transaction
DROP COLUMN ccnumber;
describe transaction;
describe credit_card;
ALTER TABLE credit_card DROP COLUMN stored_card_cid;
select * from credit_card;


insert into transactions
select * from appears_in;




SELECT * FROM customer WHERE cid = '17';

SELECT c.cid, c.fname, c.lname, SUM(t.total_amount) AS total
        FROM customer c
        JOIN basket b ON c.cid = b.cid
        JOIN transaction t ON b.bid = t.bid
        GROUP BY c.cid
        ORDER BY total DESC
        LIMIT 10;
        
SELECT * FROM trasaction;
        
        SELECT ai.pid, COUNT(*) AS frequency
        FROM transaction t
        JOIN basket b ON t.bid = b.bid
        JOIN appears_in ai ON b.bid = ai.bid
        WHERE t.date BETWEEN '2025-01-01' AND '2025-05-01'
        GROUP BY ai.pid
        ORDER BY frequency DESC
        --
        
   --      pedning tasks 
       --  create commands
CREATE TABLE CUSTOMER (
    CID INT PRIMARY KEY AUTO_INCREMENT,
    FName VARCHAR(100),
    LName VARCHAR(100),
    EMail VARCHAR(255),
    Address VARCHAR(255),
    Phone VARCHAR(50),
    Status ENUM('REGULAR', 'SILVER', 'GOLD', 'PLATINUM'),
    CreditLine DECIMAL(10,2)
);


CREATE TABLE CREDIT_CARD (
    CCNumber VARCHAR(20) PRIMARY KEY,
    SecNumber VARCHAR(10),
    OwnerName VARCHAR(100),
    CCType VARCHAR(50),
    BilAddress VARCHAR(255),
    ExpDate DATE,
    StoredCardCID INT,
    FOREIGN KEY (StoredCardCID) REFERENCES CUSTOMER(CID) ON DELETE CASCADE
);


CREATE TABLE SHIPPING_ADDRESS (
    CID INT,
    SAName VARCHAR(100),
    RecepientName VARCHAR(100),
    Street VARCHAR(255),
    SNumber VARCHAR(20),
    City VARCHAR(100),
    Zip VARCHAR(20),
    State VARCHAR(50),
    Country VARCHAR(100),
    PRIMARY KEY (CID, SAName),
    FOREIGN KEY (CID) REFERENCES CUSTOMER(CID) ON DELETE CASCADE
);

CREATE TABLE BASKET (
    CID INT,
    BID INT PRIMARY KEY AUTO_INCREMENT,
    FOREIGN KEY (CID) REFERENCES CUSTOMER(CID) ON DELETE CASCADE
);

CREATE TABLE PRODUCT (
    PID INT PRIMARY KEY AUTO_INCREMENT,
    PName VARCHAR(100),
    PType VARCHAR(50),
    PPrice DECIMAL(10,2),
    Description TEXT,
    PQuantity INT
);

CREATE TABLE COMPUTER (
    PID INT PRIMARY KEY,
    CPUType VARCHAR(100),
    FOREIGN KEY (PID) REFERENCES PRODUCT(PID)
);

CREATE TABLE LAPTOP (
    PID INT PRIMARY KEY,
    Weight DECIMAL(5,2),
    BType VARCHAR(100),
    FOREIGN KEY (PID) REFERENCES COMPUTER(PID)
);

CREATE TABLE PRINTER (
    PID INT PRIMARY KEY,
    PrinterType VARCHAR(100),
    Resolution VARCHAR(100),
    FOREIGN KEY (PID) REFERENCES PRODUCT(PID)
);

CREATE TABLE OFFER_PRODUCT (
    PID INT PRIMARY KEY,
    OfferPrice DECIMAL(10,2),
    FOREIGN KEY (PID) REFERENCES PRODUCT(PID)
);

CREATE TABLE APPEARS_IN (
    BID INT,
    PID INT,
    Quantity INT,
    PriceSold DECIMAL(10,2),
    PRIMARY KEY (BID, PID),
    FOREIGN KEY (BID) REFERENCES BASKET(BID),
    FOREIGN KEY (PID) REFERENCES PRODUCT(PID)
);

CREATE TABLE TRANSACTION (
    BID INT,
    CID INT,
    SAName VARCHAR(100),
    CCNumber VARCHAR(20),
    TDate DATE,
    TTag VARCHAR(50),
    PRIMARY KEY (BID),
    FOREIGN KEY (BID) REFERENCES BASKET(BID),
    FOREIGN KEY (CID, SAName) REFERENCES SHIPPING_ADDRESS(CID, SAName),
    FOREIGN KEY (CCNumber) REFERENCES CREDIT_CARD(CCNumber)
);






        
        




