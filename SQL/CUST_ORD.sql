CREATE TABLE Customer (
  id INT  PRIMARY KEY,
  cname VARCHAR(25) UNIQUE,
  Address VARCHAR(25),
  Gender char(2),
  City varchar(225),
  Pincode integer
);

 INSERT INTO Customer ( id, cname , Address, Gender, City, Pincode) VALUES
 (1251, 'Ram Kumar' , 'Dilbagh Nagar' , 'M' , 'Jalandhar' , 144002),
  (1252, 'Shayam Singh' , 'Ludhiyana' , 'M' , 'Ludhiana' , 144002),
  (1253, 'Neelbagh Shukla' , 'Ashok Nagar' , 'M' , 'Jalandhar' , 144002),
  (1254, 'Barkha Singh' , 'Dilbagh Nagar' , 'F' , 'Jalandhar' , 144002),
  (1255, 'Rohan Arora' , 'Ludhiana' , 'M' , 'Ludhiana' , 144002);
 
 
INSERT INTO Customer
VALUES (1252, 'Ram Kumar3', 'Dilbagh Nagar', 'M', 'Jalandhar', NULL);

CREATE TABLE Order_details (
Order_id integer PRIMARY KEY,
delivery_date DATE,
cust_id INT,
FOREIGN KEY (cust_id) references Customer(id)
);

INSERT INTO Order_details
VALUES (1, '2019-03-11', 245);

DELETE FROM Customer WHERE id = 245;
