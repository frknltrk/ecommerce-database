CREATE TABLE Customers (
    customer_id NUMBER NOT NULL,
    first_name VARCHAR2(20) NOT NULL,
    last_name VARCHAR2(20) NOT NULL,
    phone_number CHAR(10) NOT NULL,
    address VARCHAR2(50),
    PRIMARY KEY (customer_id)
);
CREATE TABLE Sellers (
    seller_id NUMBER NOT NULL,
    first_name VARCHAR2(20) NOT NULL,
    last_name VARCHAR2(20) NOT NULL,
    phone_number CHAR(10) NOT NULL,
    PRIMARY KEY (seller_id)
);
CREATE TABLE Carts (
    cart_id NUMBER NOT NULL,
    creation_date TIMESTAMP NOT NULL,
    customer_id NUMBER,
    PRIMARY KEY (cart_id),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);
CREATE TABLE Listings (
    listing_id NUMBER NOT NULL,
    title VARCHAR2(60) NOT NULL,
    price NUMBER(10,2) NOT NULL,
    quantity NUMBER NOT NULL,
    seller_id NUMBER,
    PRIMARY KEY (listing_id),
    FOREIGN KEY (seller_id) REFERENCES Sellers(seller_id)
);
CREATE TABLE Payments (
    payment_id NUMBER NOT NULL,
    cart_id NUMBER,
    listing_id NUMBER,
    PRIMARY KEY (payment_id),
    FOREIGN KEY (cart_id) REFERENCES Carts(cart_id),
    FOREIGN KEY (listing_id) REFERENCES Listings(listing_id)
);

INSERT ALL
INTO Customers VALUES (100000, 'Ali', 'Yılmaz', '5101001010', 'Obere Str. 57')
INTO Customers VALUES (100001, 'Veli', 'Kaplan', '5101001011', '')
INTO Customers VALUES (100002, 'Özgür', 'Şahin', '5101001012', 'Matederos 2312')
INTO Customers VALUES (100003, 'Halil', 'Yılmaz', '5101001013', '120 Hanover Str.')
INTO Customers VALUES (100004, 'Furkan', 'Kara', '5101001014', 'Berguvsvagen 8')
INTO Customers VALUES (100005, 'Kazım', 'Kara', '5101001015', 'Forster Str. 57')
INTO Customers VALUES (100006, 'Fatih', 'Altınoyuk', '5101001016', '24, place klaber')
INTO Customers VALUES (100007, 'Abdullah', 'Şimşek', '5101001017', 'Cerrito 333')
INTO Customers VALUES (100008, 'Zehra', 'Sayan', '5101001018', 'Haupt Str. 29')
INTO Customers VALUES (100009, 'Esra', 'Güçlü', '5101001019', 'Kirchgasse 6')
INTO Sellers VALUES (200000, 'Aysun', 'Bükücü', '5201001010')
INTO Sellers VALUES (200001, 'Gözde', 'Han', '5201001011')
INTO Sellers VALUES (200002, 'Sevgi', 'Özer', '5201001012')
INTO Sellers VALUES (200003, 'Kerim', 'Sütçü', '5201001013')
INTO Sellers VALUES (200004, 'Ayhan', 'Abacı', '5201001014')
INTO Sellers VALUES (200005, 'Emrah', 'Uzun', '5201001015')
INTO Sellers VALUES (200006, 'Sercan', 'Bahar', '5201001016')
INTO Sellers VALUES (200007, 'Elif', 'Uzunoğlu', '5201001017')
INTO Sellers VALUES (200008, 'Melike', 'Tokacı', '5201001018')
INTO Sellers VALUES (200009, 'Canan', 'Akyazı', '5201001019')
INTO Carts VALUES (700000000, TIMESTAMP '2020-03-03 13:54:22', 100003)
INTO Carts VALUES (700000001, TIMESTAMP '2020-03-04 21:49:01', 100009)
INTO Carts VALUES (700000002, TIMESTAMP '2020-03-04 21:49:49', 100007)
INTO Carts VALUES (700000003, TIMESTAMP '2020-03-05 00:11:19', 100003)
INTO Carts VALUES (700000004, TIMESTAMP '2020-03-05 09:31:09', 100008)
INTO Carts VALUES (700000005, TIMESTAMP '2020-03-05 11:32:46', 100002)
INTO Carts VALUES (700000006, TIMESTAMP '2020-03-05 18:47:39', 100002)
INTO Carts VALUES (700000007, TIMESTAMP '2020-03-06 14:46:40', 100001)
INTO Carts VALUES (700000008, TIMESTAMP '2020-03-07 20:59:58', 100003)
INTO Carts VALUES (700000009, TIMESTAMP '2020-03-10 08:02:13', 100006)
INTO Listings VALUES (80000000, 'Apple iPhone 11 64 GB (Apple Türkiye Garantili)', 12199.00, 15, 200009)
INTO Listings VALUES (80000001, 'Xiaomi Mi TV Stick Android TV Medya Oynatıcı', 299.90, 900, 200004)
INTO Listings VALUES (80000002, 'Xiaomi Mi Band 6 Akıllı Bileklik', 7360.00, 1200, 200004)
INTO Listings VALUES (80000003, 'Antep Fıstığı 1 KG', 77.90, 2500, 200000)
INTO Listings VALUES (80000004, 'Enjoy Cat Food Tavuklu Yetişkin Kedi Maması', 157.70, 350, 200008)
INTO Listings VALUES (80000005, 'Ayakkabix Günlük Erkek Outdoor Spor Ayakkabı', 109.90, 450, 200006)
INTO Listings VALUES (80000006, '24 Ayar 1 Gram Külçe Altın', 541.19, 100, 200001)
INTO Listings VALUES (80000007, 'Casio MTP-V002D-1BUDF Erkek Kol Saati (Renk Seçenekli)', 219.00, 250, 200005)
INTO Listings VALUES (80000008, 'RoyJones Terlik Modelleri Unisex Anatomik Günlük Terlik', 89.90, 700, 200003)
INTO Listings VALUES (80000009, 'Xiaomi Mi Robot Vacuum Mop Akıllı Süpürge', 2199.89, 150, 200004)
INTO Payments VALUES (900000000, 700000005, 80000006)
INTO Payments VALUES (900000001, 700000009, 80000001)
INTO Payments VALUES (900000002, 700000005, 80000004)
INTO Payments VALUES (900000003, 700000007, 80000000)
INTO Payments VALUES (900000004, 700000008, 80000007)
INTO Payments VALUES (900000005, 700000003, 80000004)
INTO Payments VALUES (900000006, 700000000, 80000000)
INTO Payments VALUES (900000007, 700000006, 80000005)
INTO Payments VALUES (900000008, 700000002, 80000003)
INTO Payments VALUES (900000009, 700000001, 80000005)
INTO Payments VALUES (900000010, 700000004, 80000002)
INTO Payments VALUES (900000011, 700000004, 80000003)
SELECT * FROM DUAL;
