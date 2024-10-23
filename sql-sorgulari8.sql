1. employee tablosunu oluşturma:
CREATE TABLE employee (
    id INTEGER PRIMARY KEY,
    name VARCHAR(50),
    birthday DATE,
    email VARCHAR(100)
);

2. Mockaroo servisi ile 50 adet veri ekleme:
Mockaroodan verileri aldıktan sonra bu verileri SQL formatına dönüştürüp INSERT INTO ifadeleri ile ekleyebilirsiniz. Örneğin:
INSERT INTO employee (id, name, birthday, email)
VALUES
(1, 'John Doe', '1990-01-01', 'john.doe@example.com'),
(2, 'Jane Smith', '1985-02-15', 'jane.smith@example.com'),
(3, 'Alice Brown', '1978-06-22', 'alice.brown@example.com'),
-- Devamı olarak 50 satır veri eklenir.
;

3. Sütunlara göre güncelleme (UPDATE) işlemleri:
a) id sütununa göre name güncelleme:
UPDATE employee SET name = 'Updated Name' WHERE id = 1;
b) name sütununa göre email güncelleme:
UPDATE employee SET email = 'new.email@example.com' WHERE name = 'Jane Smith';
c) birthday sütununa göre name güncelleme:
UPDATE employee SET name = 'Birthday Updated' WHERE birthday = '1978-06-22';
d) email sütununa göre birthday güncelleme:
UPDATE employee SET birthday = '2000-01-01' WHERE email = 'john.doe@example.com';
e) name sütununa göre email güncelleme:
UPDATE employee SET email = 'updated.email@example.com' WHERE name = 'Alice Brown';
4. Sütunlara göre silme (DELETE) işlemleri:
a) id sütununa göre satır silme:
DELETE FROM employee WHERE id = 2;
b) name sütununa göre satır silme:
DELETE FROM employee WHERE name = 'John Doe';
c) birthday sütununa göre satır silme:
DELETE FROM employee WHERE birthday = '1985-02-15';
d) email sütununa göre satır silme:
DELETE FROM employee WHERE email = 'alice.brown@example.com';
e) id sütununa göre satır silme:
DELETE FROM employee WHERE id = 5;
