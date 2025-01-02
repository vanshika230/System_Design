CREATE TABLE Customer (
  id INT  PRIMARY KEY,
  cname VARCHAR(25) UNIQUE,
  Address VARCHAR(25),
  Gender char(2),
  City varchar(225),
  Pincode integer
);

SELECT * FROM Customer;

INSERT INTO Customer 
VALUES( 1, 'Ram Kumar', 'Dilbagh Nagar', 'M', 'Jalandhar', NULL);

CREATE TABLE Order_details(
    Order_id integer PRIMARY KEY, 
    delivery_date DATE, 
    cust_id INT, 
    FOREIGN KEY(cust_id) references Customer(id) ON DELETE SET NULL
);
/* if you delete customer then its corresponding orders also get deleted*/
INSERT INTO Order_details
VALUES (3,'2019-03-11',1);

INSERT INTO Order_details
VALUES (4,'2018-03-12',1);

SELECT * from Order_details;

DELETE FROM Customer WHERE id=1;

SELECT * from Order_details;
