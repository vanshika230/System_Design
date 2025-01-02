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
 

INSERT INTO Customer(id, name)
VALUES (121, 'Bob')

-- update
UPDATE Customer SET Address='Mumbai', Gender='M' WHERE id=121;

-- update multiple rows
SET SQL_SAFE_UPDATES=0;
UPDATE Customer SET Pincode=110077;
UPDATE Customer SET Pincode=Pincode+1;

-- delete
DELETE FROM Customer WHERE id = 245;

FOREIGN KEY (cust_id) references Customer(id)
);

INSERT INTO Order_details
VALUES (1, '2019-03-11', 245);

DELETE FROM Customer WHERE id = 245;
