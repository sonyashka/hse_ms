CREATE TABLE orders (
    order_id BIGINT,
    user_id BIGINT,
    order_date TIMESTAMP,
    total_amount FLOAT,
    payment_status String
)
ENGINE = MergeTree()
ORDER BY order_id;

INSERT INTO orders (order_id,user_id,order_date,total_amount,payment_status) VALUES
(1001,10,'2023-03-01 10:00:00',1200.0,'paid'),
(1002,11,'2023-03-01 10:05:00',999.5,'pending'),
(1003,10,'2023-03-01 10:10:00',0.0,'cancelled'),
(1004,12,'2023-03-01 11:00:00',1450.0,'paid'),
(1005,10,'2023-03-01 12:00:00',500.0,'paid'),
(1006,13,'2023-03-02 09:00:00',2100.0,'paid'),
(1007,14,'2023-03-02 09:30:00',300.0,'pending'),
(1008,15,'2023-03-02 10:00:00',450.0,'paid'),
(1009,10,'2023-03-02 10:15:00',1000.0,'pending'),
(1010,11,'2023-03-02 11:00:00',799.0,'paid'),
(1011,12,'2023-03-02 12:00:00',120.0,'cancelled'),
(1012,13,'2023-03-03 08:00:00',2000.0,'paid'),
(1013,15,'2023-03-03 09:00:00',450.0,'paid'),
(1014,15,'2023-03-03 09:30:00',899.99,'paid'),
(1015,14,'2023-03-03 10:00:00',1350.0,'paid'),
(1016,10,'2023-03-03 11:00:00',750.0,'pending');

CREATE TABLE order_items (
    item_id BIGINT,
    order_id BIGINT,
    product_name String,
    product_price FLOAT,
    quantity INT
)
ENGINE = MergeTree()
ORDER BY item_id;

INSERT INTO order_items (item_id,order_id,product_name,product_price,quantity) VALUES
(1,1001,'Smartphone',600.0,2),
(2,1002,'Laptop',999.5,1),
(3,1004,'Monitor',300.0,2),
(4,1004,'Keyboard',50.0,1),
(5,1007,'Mouse',25.0,2),
(6,1010,'Laptop',799.0,1),
(7,1019,'Laptop',1100.0,2),
(8,1020,'Speaker',185.5,3),
(9,1009,'Tablet',500.0,2),
(10,1011,'PhoneCase',20.0,3),
(11,1012,'GamingConsole',650.0,3),
(12,1013,'Book',15.0,10),
(13,1014,'Smartwatch',300.0,1),
(14,1015,'Monitor',300.0,2),
(15,1015,'Keyboard',50.0,1),
(16,1016,'Camera',250.0,2);