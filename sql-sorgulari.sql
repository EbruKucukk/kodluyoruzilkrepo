1- Film tablosunda bulunan title ve description sütunlarındaki verileri sıralayınız:
SELECT title, description FROM film
ORDER BY title;

2- Film tablosunda bulunan tüm sütunlardaki verileri film uzunluğu (length) 60'dan büyük ve 75'ten küçük olma koşullarıyla sıralayınız:
SELECT * FROM film
WHERE length > 60 AND length < 75 ORDER BY length;

3- Film tablosunda bulunan tüm sütunlardaki verileri rental_rate 0.99 VE replacement_cost 12.99 VEYA 28.99 olma koşullarıyla sıralayınız:
SELECT * FROM film
WHERE rental_rate = 0.99 
  AND (replacement_cost = 12.99 OR replacement_cost = 28.99) ORDER BY rental_rate;

4- Customer tablosunda bulunan first_name sütunundaki değeri 'Mary' olan müşterinin last_name sütunundaki değeri nedir?
SELECT last_name FROM customer WHERE first_name = 'Mary';

5- Film tablosundaki uzunluğu (length) 50 den büyük OLMAYIP aynı zamanda rental_rate değeri 2.99 veya 4.99 OLMAYAN verileri sıralayınız:
SELECT * FROM film WHERE length <= 50 
  AND rental_rate NOT IN (2.99, 4.99) ORDER BY length;
